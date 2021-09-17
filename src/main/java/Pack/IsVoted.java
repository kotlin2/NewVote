package Pack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class IsVoted {
    String sql = "";
    User user;

    public boolean isVotedCHK(String uid) {
        DBConn dBconn = new DBConn();
        Connection conn = dBconn.connect();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        sql = "select isVoted from user where uid = ?";
        try {
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, uid);
            resultSet = preparedStatement.executeQuery();
            resultSet.next();
            int isVoted = resultSet.getInt("isVoted");
            if (isVoted == 1) {
                return true;
            } else {
                return false;
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
