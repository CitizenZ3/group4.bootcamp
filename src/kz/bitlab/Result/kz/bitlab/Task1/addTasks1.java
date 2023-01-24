package kz.bitlab.Result.kz.bitlab.Task1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/addtasks")
public class addTasks1 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     request.getRequestDispatcher("/add_task.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("get_name");
        String description=request.getParameter("get_des");
        String deadline=request.getParameter("get_deadline");
        Tasks ntask=new Tasks();
        ntask.setName(name);
        ntask.setDescription(description);
        ntask.setDeadlineDate(deadline);
        DBManager.addTask(ntask);
        response.sendRedirect("/hometask1");

    }
}
