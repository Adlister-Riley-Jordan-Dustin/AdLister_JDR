package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("ads") == null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
        } else {
            request.setAttribute("ads", request.getSession().getAttribute("ads"));
        }
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        /*
            Seudo Code cuz im lost
                 DONE  Create a search bar in the JSP
                            attach search bar input to ads DB
              Half done?    compare user input to ads titles in DB
                                     |  String sql = "Select * FROM ads WHERE title LIKE ?";  |
                             Display results from comparison
        */
    }
        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
        String searchAd = null;
        searchAd = request.getParameter("adBar");
        request.getSession().setAttribute("ads", DaoFactory.getAdsDao().search(searchAd));


         /*   DaoFactory.getAdsDao().search(searchAd);*/
            System.out.println("Testing do post");
            System.out.println(searchAd);
        /*    response.getWriter().println("testing post");
            response.getWriter().println(searchAd);*/
            response.sendRedirect("/ads");
        }

    }


