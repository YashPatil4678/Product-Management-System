<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.hibernate.*" %>
<%@ page import="org.hibernate.query.Query" %>
<%@ page import="org.hibernate.cfg.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.demo.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show Products</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .table-container {
            margin-top: 50px;
            background: white; /* Light blue background */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
        .table-dark {
            background-color: #0056b3; /* Blue header */
            color: white;
        }
        .btn-primary {
            background-color: #007bff; /* Blue button */
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>
    <jsp:include page="index.jsp"></jsp:include>

    <div class="container">
        <div class="table-container">
            <h2 class="text-center mb-4 text-primary">Product List</h2>
            <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Product ID</th>
                        <th>Product Name</th>
                        <th>Product Price</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    Configuration con = new Configuration();
                    con.configure("hibernate.cfg.xml");
                    SessionFactory factory = con.buildSessionFactory();
                    Session sess = factory.openSession();

                    Query q1 = sess.createQuery("from Product");
                    List l1 = q1.list();

                    for (Object obj : l1) {
                        Product p1 = (Product) obj;
                %>
                    <tr>
                        <td><%= p1.getProd_id() %></td>
                        <td><%= p1.getProd_name() %></td>
                        <td><%= p1.getProd_price() %></td>
                    </tr>
                <%
                    }
                    sess.close();
                %>
                </tbody>
            </table>
        </div>
    </div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+pP48QZlHtNDf3mD4zVO0Vp2Ezlj5vh5sBqmiZzWx5T9H2ReQs1U45KdDY3Zoz" crossorigin="anonymous"></script>
</body>
</html>
