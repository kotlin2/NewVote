<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
</head>
<style>
    .container {
        margin: auto;
        text-align: center;
        width: 50%;
        height: 50%;
    }
</style>
<body>
<%
    int c1 = Integer.valueOf((String) request.getAttribute("c1"));
    int c2 = Integer.valueOf((String) request.getAttribute("c2"));
    int c3 = Integer.valueOf((String) request.getAttribute("c3"));
    int c4 = Integer.valueOf((String) request.getAttribute("c4"));
%>
<div>
    <span class="na">�質��</span>
    <%
        for (int i = 0; i < c1; i++) {%><span>��</span><%
    }
%>
    <br/>
    <span class="jae">������</span>
    <%
        for (int i = 0; i < c2; i++) {%><span>��</span><%
    }
%>
    <br/>
    <span class="su">�����</span>
    <%
        for (int i = 0; i < c3; i++) {%><span>��</span><%
    }
%>
    <br/>
    <span class="yae">�ֿ���</span>
    <%
        for (int i = 0; i < c4; i++) {%><span>��</span><%
    }
%>
</div>
<div class="container">
    <canvas id="myChart"></canvas>
</div>
<script>
    var ctx = document.getElementById('myChart');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['�質��', '������', '�����', '�ֿ���'],
            datasets: [{
                label: '��ǥ��',
                data: [<%=c1%>, <%=c2%>, <%=c3%>, <%=c4%>],
                backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)'],
                borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)'],
                borderWidth: 1
            }]
        },
        options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}}
    });
</script>
</body>
</html>