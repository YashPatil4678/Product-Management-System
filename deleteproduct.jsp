<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .form-container {
            background: white; /* Soft red gradient */
            border-radius: 15px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15); /* Enhanced shadow */
            padding: 30px;
            margin-top: 30px;
        }
        .form-container h2 {
            font-size: 1.8rem;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
            color: #e60000; /* Bold red for header */
        }
        .form-container .form-label {
            font-weight: 600;
            margin-top: 10px;
            color: #333; /* Darker text for labels */
        }
        .form-control {
            border: 2px solid #e60000; /* Matching red accent border */
            border-radius: 8px;
            padding: 10px;
        }
        .btn-submit {
            background: linear-gradient(to right, #e60000, #ff3333); /* Red gradient button */
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        .btn-submit:hover {
            background: linear-gradient(to right, #ff3333, #e60000); /* Reverse gradient on hover */
        }
    </style>
</head>
<body>
    <jsp:include page="index.jsp"></jsp:include>

    <div class="container d-flex justify-content-center">
        <div class="col-md-6 form-container">
            <h2 class="text-center mb-4">Delete Product</h2>
            <form action="DeleteServlet" method="post">
                <div class="mb-3">
                    <label for="txtid" class="form-label">Product ID</label>
                    <input type="number" class="form-control" id="txtid" name="txtid" placeholder="Enter product ID to delete" required min="1">
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-danger btn-submit">Delete Product</button>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+pP48QZlHtNDf3mD4zVO0Vp2Ezlj5vh5sBqmiZzWx5T9H2ReQs1U45KdDY3Zoz" crossorigin="anonymous"></script>
</body>
</html>
