package kz.bitlab.Result.kz.bitlab.Task1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value = "/delete")
public class DeleteTask extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idishka=request.getParameter("id");
        int id=0;
        try { id=Integer.parseInt(idishka);

        }catch (Exception e){

        }

        DBManager.deleteTask(id);

        response.sendRedirect("/hometask1");



        }}


