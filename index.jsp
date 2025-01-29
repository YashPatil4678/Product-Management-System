<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, #ffecd2, #fcb69f);
            color: #212529;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .header {
            background: linear-gradient(to right, #ff7e5f, #feb47b); /* Updated background color */
            color: white;
            padding: 40px 20px;
            border-radius: 15px;
            text-align: center;
            margin-bottom: 30px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
        .header h1 {
            font-size: 2.5rem;
            font-weight: bold;
            margin: 0;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }
        .btn-custom {
            font-size: 18px;
            font-weight: bold;
            width: 100%;
            padding: 15px;
        }
    </style>
</head>
<body>
	
    <div class="container mt-4">
        <!-- Header Section -->
        <div class="header">
            <h1>Welcome to the Product Management System</h1>
        </div>

        <!-- Navigation Buttons -->
        <div class="row justify-content-center">
            <div class="col-md-3 mb-3">
                <div class="card text-center">
                    <div class="card-body">
                        <a class="btn btn-primary btn-custom" href="showproduct.jsp">Show Products</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card text-center">
                    <div class="card-body">
                        <a class="btn btn-success btn-custom" href="addproduct.jsp">Add Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card text-center">
                    <div class="card-body">
                        <a class="btn btn-danger btn-custom" href="deleteproduct.jsp">Delete Product</a>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div class="card text-center">
                    <div class="card-body">
                        <a class="btn btn-warning btn-custom" href="updateproduct.jsp">Update Product</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+pP48QZlHtNDf3mD4zVO0Vp2Ezlj5vh5sBqmiZzWx5T9H2ReQs1U45KdDY3Zoz" crossorigin="anonymous"></script>
</body>
</html>
