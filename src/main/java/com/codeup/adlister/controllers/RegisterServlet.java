package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // ensure the submitted information is valid
        System.out.println("any message");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (username.trim().isEmpty() || email.trim().isEmpty() || password.trim().isEmpty()){
            request.setAttribute("error", "All fields are required");
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }

        //create a new user based off of the submitted information
        User user = new User (0,username, email, password);
        DaoFactory.getUsersDao().insert(user);

        //if a user was successfully created, send them to their profile
        response.sendRedirect("/profile");
    }
}
