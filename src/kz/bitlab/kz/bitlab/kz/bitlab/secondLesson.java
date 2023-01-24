package kz.bitlab.kz.bitlab.kz.bitlab;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.lang.model.element.Element;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(value = "/leson2")

public class secondLesson extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ArrayList<users> users = new ArrayList<>();
        users a = new users("Rustam", "Shakhmaev", "IT", 10000000);
        users b = new users("Islam", "Khakhmaev", "IT", 10000);
        users c = new users("Ruslam", "Aybekov", "IT", 321000);
        users d = new users("Artur", "Nazarov", "Manadgment", 43000);
        users e = new users("Aruzhan", "Aylbekova", "IT", 10000);
        users.add(a);
        users.add(b);
        users.add(c);
        users.add(d);
        users.add(e);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print("<table>");
        out.print("<tr>");
        out.print("<th>Name</th>");
        out.print("<th>Surname</th>");
        out.print("<th>Department</th>");
        out.print("<th>Salary</th>");
        out.print("</tr>");
        for (int i = 0; i < users.size(); i++) {
            out.print("<tr>");
            out.print("<td>");
            out.print(users.get(i).name);
            out.print("</td>");
            out.print("<td>");
            out.print(users.get(i).surname);
            out.print("</td>");
            out.print("<td>");
            out.print(users.get(i).department);
            out.print("</td>");
            out.print("<td>");
            out.print(users.get(i).salary);
            out.print("</td>");
            out.print("</tr>");
        }

        out.print("</table>");
    }


}



