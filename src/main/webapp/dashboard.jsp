<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<head>
<meta charset="UTF-8">
<title>Employee Dashboard</title>

<style>
    .dashboard-card {
        transition: transform 0.3s;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .dashboard-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 12px rgba(0,0,0,0.15);
    }
    .welcome-header {
        background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
        color: white;
        padding: 2rem;
        border-radius: 10px;
        margin-bottom: 2rem;
    }
    .sidebar {
        background-color: #f8f9fa;
        border-right: 1px solid #dee2e6;
        height: 100vh;
        position: sticky;
        top: 0;
    }
    .sidebar .nav-link {
        color: #495057;
        border-radius: 5px;
        margin-bottom: 5px;
    }
    .sidebar .nav-link:hover, .sidebar .nav-link.active {
        background-color: #e9ecef;
        color: #0d6efd;
    }
    .sidebar .nav-link i {
        margin-right: 10px;
    }
    .main-content {
        padding: 20px;
    }
</style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-3 col-lg-2 d-md-block sidebar collapse bg-light">
            <div class="position-sticky pt-3">
                <div class="text-center mb-4">
                    <h4>Employee Management</h4>
                    <hr>
                </div>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">
                            <i class="bi bi-speedometer2"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="employees.jsp">
                            <i class="bi bi-people-fill"></i> Employees
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-calendar-check"></i> Attendance
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-cash-stack"></i> Payroll
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-file-earmark-text"></i> Reports
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="bi bi-gear"></i> Settings
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Main Content -->
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Dashboard</h1>
                <div class="btn-toolbar mb-2 mb-md-0">
                    <span class="navbar-text me-3">
                        Welcome <%= session.getAttribute("email") %> 
                    </span>
                    <a href="${pageContext.request.contextPath}/LogoutServlet" class="btn btn-sm btn-outline-secondary">
    					<i class="bi bi-box-arrow-right"></i> Logout
					</a>               
				</div>
            </div>

            <!-- Welcome Card -->
            <div class="welcome-header mb-4">
                <div class="row">
                    <div class="col-md-8">
                        <h2>Welcome back!</h2>
                        <p class="lead">Here's what's happening with your employees today.</p>
                    </div>
                    <div class="col-md-4 text-end">
                        <i class="bi bi-building" style="font-size: 4rem; opacity: 0.7;"></i>
                    </div>
                </div>
            </div>

            <!-- Stats Cards -->
            <div class="row mb-4">
                <div class="col-md-3">
                    <div class="card text-white bg-primary mb-3 dashboard-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h5 class="card-title">Total Employees</h5>
                                    <h2 class="mb-0">124</h2>
                                </div>
                                <i class="bi bi-people-fill" style="font-size: 2rem;"></i>
                            </div>
                            <p class="card-text mt-2"><small>+5% from last month</small></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-success mb-3 dashboard-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h5 class="card-title">Present Today</h5>
                                    <h2 class="mb-0">98</h2>
                                </div>
                                <i class="bi bi-check-circle-fill" style="font-size: 2rem;"></i>
                            </div>
                            <p class="card-text mt-2"><small>78% attendance rate</small></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-warning mb-3 dashboard-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h5 class="card-title">On Leave</h5>
                                    <h2 class="mb-0">12</h2>
                                </div>
                                <i class="bi bi-calendar-x-fill" style="font-size: 2rem;"></i>
                            </div>
                            <p class="card-text mt-2"><small>3 sick leaves</small></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-white bg-danger mb-3 dashboard-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div>
                                    <h5 class="card-title">Absent</h5>
                                    <h2 class="mb-0">14</h2>
                                </div>
                                <i class="bi bi-exclamation-triangle-fill" style="font-size: 2rem;"></i>
                            </div>
                            <p class="card-text mt-2"><small>Action required</small></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Recent Activities -->
            <div class="card mb-4">
                <div class="card-header">
                    <h5><i class="bi bi-clock-history"></i> Recent Activities</h5>
                </div>
                <div class="card-body">
                    <div class="list-group">
                        <a href="#" class="list-group-item list-group-item-action">
                            <div class="d-flex w-100 justify-content-between">
                                <h6 class="mb-1">John Doe updated his profile</h6>
                                <small>10 minutes ago</small>
                            </div>
                            <p class="mb-1">Changed contact number</p>
                        </a>
                        <a href="#" class="list-group-item list-group-item-action">
                            <div class="d-flex w-100 justify-content-between">
                                <h6 class="mb-1">New employee onboarded</h6>
                                <small>2 hours ago</small>
                            </div>
                            <p class="mb-1">Jane Smith joined as Software Developer</p>
                        </a>
                        <a href="#" class="list-group-item list-group-item-action">
                            <div class="d-flex w-100 justify-content-between">
                                <h6 class="mb-1">Payroll processed</h6>
                                <small>1 day ago</small>
                            </div>
                            <p class="mb-1">March 2023 payroll completed</p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Upcoming Holidays -->
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h5><i class="bi bi-calendar-event"></i> Upcoming Holidays</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Good Friday
                                    <span class="badge bg-primary rounded-pill">Apr 7, 2023</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Memorial Day
                                    <span class="badge bg-primary rounded-pill">May 29, 2023</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center">
                                    Independence Day
                                    <span class="badge bg-primary rounded-pill">Jul 4, 2023</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h5><i class="bi bi-bell-fill"></i> Quick Actions</h5>
                        </div>
                        <div class="card-body">
                            <div class="d-grid gap-2">
                                <button class="btn btn-outline-primary" type="button">
                                    <i class="bi bi-person-plus"></i> Add New Employee
                                </button>
                                <button class="btn btn-outline-success" type="button">
                                    <i class="bi bi-file-earmark-spreadsheet"></i> Generate Payroll
                                </button>
                                <button class="btn btn-outline-info" type="button">
                                    <i class="bi bi-graph-up"></i> View Reports
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>