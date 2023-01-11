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
        if (request.getParameter("updateUser") != null) {
//            to create a new user
            String username = request.getParameter("updateUsername");
            String email = request.getParameter("updateEmail");
            User user = (User) request.getSession().getAttribute("user");
            DaoFactory.getUsersDao().updateByUsername(username, email, user.getUsername());
            User newUser = DaoFactory.getUsersDao().findByUsername(username);
            request.getSession().setAttribute("user", newUser);
        }else if (request.getParameter("updateAd") != null) {
//            to create a new add
            String title = request.getParameter("updateTitle");
            String description = request.getParameter("updateDescription");
            Long id = Long.valueOf(request.getParameter("updateAd"));
//            Ad ad = (Ad) request.getSession().getAttribute("ad");
            DaoFactory.getAdsDao().updateAd(title, description, id);
            request.getSession().setAttribute("ad", id);
//            testing with souts
            System.out.println(title);
            System.out.println(id);
        }
        response.sendRedirect("/profile");
    }
}
