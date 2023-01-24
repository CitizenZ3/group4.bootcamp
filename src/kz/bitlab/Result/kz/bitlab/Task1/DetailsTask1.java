package kz.bitlab.Result.kz.bitlab.Task1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/details")

public class DetailsTask1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idishka=request.getParameter("id");
        int id=0;
        try { id=Integer.parseInt(idishka);

        }catch (Exception e){

        }

        Tasks tasks=DBManager.getTask(id);
        request.setAttribute("a",tasks);
        String re=request.getParameter("get_baton");

        request.getRequestDispatcher("/detailTask1.jsp").forward(request,response);

        if (re.equals("get_baton")){
            DBManager.deleteTask(id);

    }
}}
