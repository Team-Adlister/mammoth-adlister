package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by everardosifuentes on 6/16/17.
 */
@WebServlet(name = "controllers.AdsDetailServlet", urlPatterns = "/adsDetail")
public class AdsDetailServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //request.setAttribute("ads", DaoFactory.getAdsDao().all());
        //request.setAttribute("ads", DaoFactory.getUsersDao().findByUsername("user"));
        int id = Integer.parseInt(request.getParameter("Id"));
        request.setAttribute("ad", DaoFactory.getAdsDao().getAdById(id));
        request.getRequestDispatcher("/WEB-INF/ads/adsDetail.jsp").forward(request, response);

    }
}
