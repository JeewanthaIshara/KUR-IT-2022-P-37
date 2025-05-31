import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.Employee;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private static final String DB_URL = "jdbc:mysql://localhost:3306/mydb";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "2521*#Ji";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                
                if ("delete".equals(action)) {
                    deleteEmployee(conn, request);
                } else if ("edit".equals(action)) {
                    Employee employee = getEmployeeById(conn, Integer.parseInt(request.getParameter("id")));
                    request.setAttribute("employee", employee);
                }
                
                List<Employee> employees = getAllEmployees(conn);
                request.setAttribute("employees", employees);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error: " + e.getMessage());
        }
        
        if ("edit".equals(action)) {
            request.getRequestDispatcher("editEmployee.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("employees.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                
                String action = request.getParameter("action");
                if ("add".equals(action)) {
                    addEmployee(conn, request);
                } else if ("update".equals(action)) {
                    updateEmployee(conn, request);
                }
                
                response.sendRedirect("EmployeeServlet");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error processing employee: " + e.getMessage());
            request.getRequestDispatcher("employees.jsp").forward(request, response);
        }
    }

    private List<Employee> getAllEmployees(Connection conn) throws SQLException {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT * FROM employees";
        
        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            while (rs.next()) {
                Employee emp = new Employee();
                emp.setId(rs.getInt("id"));
                emp.setFirstName(rs.getString("first_name"));
                emp.setLastName(rs.getString("last_name"));
                emp.setEmail(rs.getString("email"));
                emp.setPhone(rs.getString("phone"));
                emp.setDepartment(rs.getString("department"));
                emp.setPosition(rs.getString("position"));
                emp.setJoinDate(rs.getDate("join_date"));
                emp.setSalary(rs.getDouble("salary"));
                emp.setAddress(rs.getString("address"));
                emp.setStatus(rs.getString("status"));
                employees.add(emp);
            }
        }
        return employees;
    }

    private Employee getEmployeeById(Connection conn, int id) throws SQLException {
        String sql = "SELECT * FROM employees WHERE id = ?";
        Employee emp = new Employee();
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    emp.setId(rs.getInt("id"));
                    emp.setFirstName(rs.getString("first_name"));
                    emp.setLastName(rs.getString("last_name"));
                    emp.setEmail(rs.getString("email"));
                    emp.setPhone(rs.getString("phone"));
                    emp.setDepartment(rs.getString("department"));
                    emp.setPosition(rs.getString("position"));
                    emp.setJoinDate(rs.getDate("join_date"));
                    emp.setSalary(rs.getDouble("salary"));
                    emp.setAddress(rs.getString("address"));
                    emp.setStatus(rs.getString("status"));
                }
            }
        }
        return emp;
    }

    private void addEmployee(Connection conn, HttpServletRequest request) throws SQLException {
        String sql = "INSERT INTO employees (first_name, last_name, email, phone, department, position, join_date, salary, address, status) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, request.getParameter("firstName"));
            pstmt.setString(2, request.getParameter("lastName"));
            pstmt.setString(3, request.getParameter("email"));
            pstmt.setString(4, request.getParameter("phone"));
            pstmt.setString(5, request.getParameter("department"));
            pstmt.setString(6, request.getParameter("position"));
            pstmt.setDate(7, Date.valueOf(request.getParameter("joinDate")));
            pstmt.setDouble(8, Double.parseDouble(request.getParameter("salary")));
            pstmt.setString(9, request.getParameter("address"));
            pstmt.setString(10, request.getParameter("status"));
            pstmt.executeUpdate();
        }
    }

    private void updateEmployee(Connection conn, HttpServletRequest request) throws SQLException {
        String sql = "UPDATE employees SET first_name=?, last_name=?, email=?, phone=?, department=?, " +
                     "position=?, join_date=?, salary=?, address=?, status=? WHERE id=?";
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, request.getParameter("firstName"));
            pstmt.setString(2, request.getParameter("lastName"));
            pstmt.setString(3, request.getParameter("email"));
            pstmt.setString(4, request.getParameter("phone"));
            pstmt.setString(5, request.getParameter("department"));
            pstmt.setString(6, request.getParameter("position"));
            pstmt.setDate(7, Date.valueOf(request.getParameter("joinDate")));
            pstmt.setDouble(8, Double.parseDouble(request.getParameter("salary")));
            pstmt.setString(9, request.getParameter("address"));
            pstmt.setString(10, request.getParameter("status"));
            pstmt.setInt(11, Integer.parseInt(request.getParameter("id")));
            pstmt.executeUpdate();
        }
    }

    private void deleteEmployee(Connection conn, HttpServletRequest request) throws SQLException {
        String sql = "DELETE FROM employees WHERE id = ?";
        
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, Integer.parseInt(request.getParameter("id")));
            pstmt.executeUpdate();
        }
    }
}