package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        User user = (User) request.getSession().getAttribute("user");
        request.setAttribute("ads", DaoFactory.getAdsDao().findByUserId(String.valueOf(user.getId())));

        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("updateUsername");
        String email = request.getParameter("updateEmail");
        User user = (User) request.getSession().getAttribute("user");
        DaoFactory.getUsersDao().updateByUsername(username,email, user.getUsername());
        User newUser = DaoFactory.getUsersDao().findByUsername(username);
        request.getSession().setAttribute("user", newUser);

        String title = request.getParameter("updateTitle");
        String description = request.getParameter("updateDescription");
        Ad newTitle = (Ad) DaoFactory.getAdsDao().findByTitle(title);
        DaoFactory.getAdsDao().updateAd(title, description, newTitle.getTitle());
        request.getSession().setAttribute("ad", newTitle);


        System.out.println(username);
        System.out.println(email);
        System.out.println(user.getUsername());
//        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        response.sendRedirect("/profile");
    }
}
