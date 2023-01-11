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
    }

        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
        String searchAd = null;
        searchAd = request.getParameter("adBar");
        if (DaoFactory.getAdsDao().search(searchAd) == null){
            response.sendRedirect("/ads");
        }
        request.getSession().setAttribute("ads", DaoFactory.getAdsDao().search(searchAd));
            response.sendRedirect("/ads");
        }
        
    }


