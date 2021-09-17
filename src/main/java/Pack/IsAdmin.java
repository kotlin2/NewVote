package Pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class IsAdmin {

    String sql = "";
    User user;

    public boolean isAdminCHK(String uid) {
        DBConn dBconn = new DBConn();
        Connection conn = dBconn.connect();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        sql = "select UID from user where uid = ?";
        try {
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, uid);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                String isAdmin = resultSet.getString("UID");
                if (isAdmin.equals("admin")) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null) conn.close();
                if (preparedStatement != null) preparedStatement.close();
                if (resultSet != null) resultSet.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

}
