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
            request.setAttribute("ads", DaoFactory.getAdsDao().all());

            request.setAttribute("ads", request.getSession().getAttribute("ads"));

        //create a set attribute to none, so that it refreshed the page and goes to the "if" statement
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

        /*protected void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
            System.out.println("search before search=null");
            String searchAd = null;
            searchAd = request.getParameter("adBar");
            //searchAd is getting value from the searchbar
            //WE get all results from searching a blank
            System.out.println("search value is " + searchAd);
            System.out.println("in dopost now");
            if (DaoFactory.getAdsDao().search(searchAd) == null || request.getSession().getAttribute("ads") == null) {
                //If no value is typed in search bar, and enter is hit, redirect to /ads
                System.out.println("DoPost. if search equals null, redirect to ads");
                request.setAttribute("ads", DaoFactory.getAdsDao().all());
            }
                        //Maybe make an else if, that if "Junklister" or page is refreshed then redirect to /ads before "search(searchAd) runs
                request.getSession().setAttribute("ads", DaoFactory.getAdsDao().search(searchAd));

                System.out.println("we're done with dopost");

                response.sendRedirect("/ads");

                System.out.println("We redirected to ads");

            }*/
}

//when we are done searching for the ad, we need to redirect to the ad index, with out the attrtubute of the search
//Make search servlet. this servlet would only show searched ads, we could then redirect to the regular ad page when no search is made
