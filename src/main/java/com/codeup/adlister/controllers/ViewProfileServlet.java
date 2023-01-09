package com.codeup.adlister.controllers;
import com.mysql.cj.jdbc.Driver;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        Connection connection = null;

        String selectQuery = "SELECT * FROM ads WHERE username = ?";
//        String userID = sessionScope.user.username;
        String userId = request.getSession().getAttribute("username").toString();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement(selectQuery);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            statement.setString(1, userId);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        try {
            DriverManager.registerDriver(new Driver());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        Config2 config = new Config2();
        try {
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        Statement stmt = null;
        try {
            stmt = connection.createStatement();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery(selectQuery);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        while (true) {
            try {
                if (!rs.next()) break;
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            System.out.println("?:");
            try {
                System.out.println("  id: " + rs.getInt("user_id"));
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            try {
                System.out.println("  artist: " + rs.getString("artist"));
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            try {
                System.out.println("  name: " + rs.getString("name"));
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }


//
//
//        Connection connection;
//        Config config = new Config();
//        try {
//            DriverManager.registerDriver(new Driver());
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        connection = DriverManager.getConnection(
//                config.getUrl(),
//                config.getUser(),
//                config.getPassword()
//        );
//        Statement statement = connection.createStatement();
//        ResultSet rs = statement.executeQuery("SELECT * FROM ads WHERE user_id = ?");
//// 'rs' is an instance of ResultSet
//        while (rs.next()) {
//            // do something with each row
//        }
//        String sql = "SELECT * FROM ads WHERE user_id = ?";
//        PreparedStatement.setString(1, "user");
    }
}
