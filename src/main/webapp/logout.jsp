<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="refresh" content="2;url=login.jsp?logout=true">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Logout</title>
    <style>
        .logout-container {
            text-align: center;
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <div class="container logout-container">
        <div class="spinner-border text-primary" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
        <h3 class="mt-3">Logging out...</h3>
        <p class="mt-2">You have been successfully logged out.</p>
    </div>
</body>
</html>