package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.getSession().removeAttribute("ads");
        System.out.println("starts of doGET " + request.getAttribute("ads"));
        if (request.getSession().getAttribute("ads") == null) {
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
            System.out.println("if ads attribute equals null " + request.getAttribute("ads"));
        }
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        System.out.println("after if statement" + request.getAttribute("ads"));
    }


}
//when we are done searching for the ad, we need to redirect to the ad index, with out the attrtubute of the search
//Make search servlet. this servlet would only show searched ads, we could then redirect to the regular ad page when no search is made
