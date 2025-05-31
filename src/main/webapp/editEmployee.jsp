<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Employee"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Edit Employee</h4>
                </div>
                <div class="card-body">
                    <form action="EmployeeServlet" method="post">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="id" value="${employee.id}">
                        
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="firstName" class="form-label">First Name</label>
                                <input type="text" class="form-control" id="firstName" name="firstName" 
                                       value="${employee.firstName}" required>
                            </div>
                            <div class="col-md-6">
                                <label for="lastName" class="form-label">Last Name</label>
                                <input type="text" class="form-control" id="lastName" name="lastName" 
                                       value="${employee.lastName}" required>
                            </div>
                        </div>
                        
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" 
                                       value="${employee.email}" required>
                            </div>
                            <div class="col-md-6">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" 
                                       value="${employee.phone}" required>
                            </div>
                        </div>
                        
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="department" class="form-label">Department</label>
                                <select class="form-select" id="department" name="department" required>
                                    <option value="IT" ${employee.department == 'IT' ? 'selected' : ''}>IT</option>
                                    <option value="HR" ${employee.department == 'HR' ? 'selected' : ''}>HR</option>
                                    <option value="Finance" ${employee.department == 'Finance' ? 'selected' : ''}>Finance</option>
                                    <option value="Operations" ${employee.department == 'Operations' ? 'selected' : ''}>Operations</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="position" class="form-label">Position</label>
                                <input type="text" class="form-control" id="position" name="position" 
                                       value="${employee.position}" required>
                            </div>
                        </div>
                        
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="joinDate" class="form-label">Join Date</label>
                                <input type="date" class="form-control" id="joinDate" name="joinDate" 
                                       value="${employee.joinDate}" required>
                            </div>
                            <div class="col-md-6">
                                <label for="salary" class="form-label">Salary</label>
                                <input type="number" step="0.01" class="form-control" id="salary" name="salary" 
                                       value="${employee.salary}" required>
                            </div>
                        </div>
                        
                        <div class="mb-3">
                            <label for="address" class="form-label">Address</label>
                            <textarea class="form-control" id="address" name="address" rows="3" required>${employee.address}</textarea>
                        </div>
                        
                        <div class="mb-3">
                            <label for="status" class="form-label">Status</label>
                            <select class="form-select" id="status" name="status" required>
                                <option value="Active" ${employee.status == 'Active' ? 'selected' : ''}>Active</option>
                                <option value="Inactive" ${employee.status == 'Inactive' ? 'selected' : ''}>Inactive</option>
                                <option value="On Leave" ${employee.status == 'On Leave' ? 'selected' : ''}>On Leave</option>
                            </select>
                        </div>
                        
                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <a href="EmployeeServlet" class="btn btn-secondary me-md-2">Cancel</a>
                            <button type="submit" class="btn btn-primary">Update Employee</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>