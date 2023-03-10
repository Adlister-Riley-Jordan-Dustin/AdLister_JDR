package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        if (DaoFactory.getUsersDao().findByUsername(username) == null){
            // validate input
            boolean inputHasErrors = username.isEmpty()
                    || email.isEmpty()
                    || password.isEmpty()
                    || (!password.equals(passwordConfirmation));

            if (inputHasErrors) {
                response.sendRedirect("/register");
                return;
            }
            boolean usernameInvalid = Boolean.parseBoolean(request.getParameter("username"));
            if (usernameInvalid) {
                response.sendRedirect("/register");
            }

            // create and save a new user
            User user = new User(username, email, password);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");

        }else {
            response.sendRedirect("/register");
        }
    }
}
