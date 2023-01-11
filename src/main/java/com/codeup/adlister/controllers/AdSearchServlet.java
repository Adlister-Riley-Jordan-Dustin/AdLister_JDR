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
@WebServlet(name = "controllers.AdsSearchServlet", urlPatterns = "/ads/search")
public class AdSearchServlet extends HttpServlet {
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("search before search=null");
        String searchAd = null;
        searchAd = request.getParameter("adBar");
        //searchAd is getting value from the searchbar
        //WE get all results from searching a blank
        System.out.println("search value is " + searchAd);
        System.out.println("in dopost now");
        //Maybe make an else if, that if "Junklister" or page is refreshed then redirect to /ads before "search(searchAd) runs

        request.getSession().setAttribute("ads", DaoFactory.getAdsDao().search(searchAd));

        System.out.println("we're done with dopost");

        response.sendRedirect("/ads/search");

        System.out.println("We redirected to ads/search");

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //if something is in the search bar, proceed to doPost
        System.out.println("we have an attritbute, sending to doPost");
        request.setAttribute("ads", request.getSession().getAttribute("ads"));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
