<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    .login-container {
        max-width: 500px;
        margin: 0 auto;
        padding: 2rem;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        background-color: white;
        margin-top: 5vh;
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
        <!-- Sidebar (hidden on login page but maintains layout consistency) -->
        <div class="col-md-3 col-lg-2 d-md-block sidebar collapse bg-light" style="visibility: hidden;">
        </div>

        <!-- Main Content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Login</h1>
            </div>

            <div class="login-container">
                <form method="post" action="Login">
                    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
                    
                    <script>
                        var status = document.getElementById('status').value;
                        if(status == 'failed'){
                            alert('Invalid email or password');
                        }
                    </script>

                    <div class="mb-4">
                        <h2 class="text-center mb-4"><i class="bi bi-box-arrow-in-right"></i> User Login</h2>
                    </div>
                    
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" name="email" class="form-control" required>
                    </div>
                    
                    <div class="mb-4">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-success btn-lg">
                            <i class="bi bi-box-arrow-in-right"></i> Login
                        </button>
                    </div>
                    
                    <div class="text-center mt-3">
                        <p>Don't have an account? <a href="register.jsp">Register here</a></p>
                    </div>
                </form>
            </div>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>