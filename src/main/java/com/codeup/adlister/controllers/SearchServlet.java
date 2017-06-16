package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by renecortez on 6/16/17.
 */

@WebServlet(name = "SearchServlet", urlPatterns="/search")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String search = request.getParameter("search");
        request.setAttribute("ads", DaoFactory.getAdsDao().getAdsByTerm(search));
        request.setAttribute("AdsDao", DaoFactory.getAdsDao());
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);

    }
}
