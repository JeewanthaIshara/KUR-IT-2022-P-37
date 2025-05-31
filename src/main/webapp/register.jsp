<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
    .register-container {
        max-width: 600px;
        margin: 0 auto;
        padding: 2rem;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        background-color: white;
        margin-top: 2rem;
    }
    body {
        background-color: #f8f9fa;
    }
    .form-label {
        font-weight: 500;
    }
</style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar (hidden for register page but maintains layout) -->
        <div class="col-md-3 col-lg-2 d-md-block sidebar collapse bg-light" style="visibility: hidden;">
        </div>

        <!-- Main Content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">User Registration</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <a href="login.jsp" class="btn btn-sm btn-outline-secondary">
                        <i class="bi bi-box-arrow-in-right"></i> Back to Login
                    </a>
                </div>
            </div>

            <div class="register-container">
                <form method="post" action="Register">
                    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
                    
                    <script>
                        var status = document.getElementById('status').value;
                        if(status == 'success'){
                            alert('Registration successful! Please login.');
                        } else if(status == 'failed'){
                            alert('Registration failed. Please try again.');
                        }
                    </script>

                    <div class="mb-4 text-center">
                        <h3><i class="bi bi-person-plus"></i> Create Account</h3>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="full_name" class="col-sm-3 col-form-label">Full Name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="full_name" required>
                        </div>
                    </div>
                    
                    <div class="mb-3 row">
                        <label for="email" class="col-sm-3 col-form-label">Email</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" name="email" required>
                        </div>
                    </div>
                    
                    <div class="mb-4 row">
                        <label for="password" class="col-sm-3 col-form-label">Password</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" name="password" required>
                        </div>
                    </div>
                    
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-success btn-lg">
                            <i class="bi bi-person-plus"></i> Register
                        </button>
                    </div>
                    
                    <div class="text-center mt-3">
                        <p>Already have an account? <a href="login.jsp">Login here</a></p>
                    </div>
                </form>
            </div>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" 
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" 
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>