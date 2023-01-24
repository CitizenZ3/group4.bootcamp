<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.Result.kz.bitlab.Task1.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="headTask1.jsp" %>
    <%@include file="CSSTask1.jsp" %>
</head>
<body onload="ne()">


<%@include file="nav1Task1.html.jsp" %>


<% ArrayList<Tasks> task = (ArrayList<Tasks>) request.getAttribute("AllTAsk");%>

<div style="width: 100%; display: flex; flex-wrap: wrap">
    <div style="width: 20%; display: flex; flex-wrap: wrap">

        <%
            if (task.size() >= 10) {
                out.print(" <div class=\"speech-bubble\" style=\"height: 100px;width: 100%;\n" +
                        "\"><div class=\"col-6 mx-auto\" style=\"margin-top: 20px;color: #e1faff\">JUST DO IT! MAKE YOUR DREAM COME TRUE</div></div><div style=\"width:100%\"><img src='/src/ferst5.png' style='height: 150px'></div>");
            } else if (task.size() < 10 && task.size() >= 8) {
                out.print(" <div class=\"speech-bubble\" style=\"height: 100px;width: 100%;\n" +
                        "\"><div class=\"col-6 mx-auto\" style=\"margin-top: 20px;color: #e1faff\">Ok Don't Panic!</div></div><div style=\"width:100%\"><img src='/src/first4.png' style='height: 150px'></div>");
            } else if (task.size() < 8 && task.size() >= 6) {
                out.print(" <div class=\"speech-bubble\" style=\"height: 100px;width: 100%;\n" +
                        "\"><div class=\"col-6 mx-auto\" style=\"margin-top: 20px;color: #e1faff\">It's only look Dificult</div></div><div style=\"width:100%\"><img src='/src/first4.png' style='height: 150px'></div>");

            } else if (task.size() < 6 && task.size() >= 4) {
                out.print(" <div class=\"speech-bubble\" style=\"height: 100px;width: 100%;\n" +
                        "\"><div class=\"col-6 mx-auto\" style=\"margin-top: 20px;color: #e1faff\">It's time to work a bit</div></div><div style=\"width:100%\"><img src='/src/first2.png' style='height: 150px'></div>");

            } else if (task.size() < 4 && task.size() >= 2) {
                out.print(" <div class=\"speech-bubble\" style=\"height: 100px;width: 100%;\n" +
                        "\"><div class=\"col-6 mx-auto\" style=\"margin-top: 20px;color: #e1faff\">Honey you are the best!</div></div><div style=\"width:100%\"><img src='/src/first3.png' style='height: 150px'></div>");

            } else if (task.size() < 2 && task.size() >= 0) {
                out.print(" <div class=\"speech-bubble\" style=\"height: 150px;width: 100%;\n" +
                        "\"><div class=\"col-6 mx-auto\" style=\"margin-top: 20px;color: #e1faff\">Your Awesome!</div></div><div style=\"width:100%\"><img src='/src/first.png' style='height: 150px'></div>");

            }
        %></div>

    <div style="width: 80%; display: flex; flex-wrap: wrap;margin-top: 15px">
        <%
            if (task != null) {
                for (Tasks tasks : task) {
                    int i=0;
        %>

        <div class="bblock" style="width: 25%">
            <div class="image-flip" id="a<%=i%>" ontouchstart="this.classList.toggle('hover');">
                <div class="mainflip">
                    <div class="frontside">
                        <div class="card" style="height: 280px;width: 240px">

                            <div class="card-body">
                                <h4 class="card-title"><%out.print(tasks.getName());%></h4>
                                <p class="card-text"><%out.print(tasks.getDescription());%></p>
                            </div>
                        </div>
                    </div>
                    <div class="backside">
                        <div class="card" style="height: 240px;width: 240px">
                            <div class="card-header">
                                <%out.print(tasks.getDeadlineDate());%>
                            </div>
                            <div class="card-body">
                                <h4 class="card-title"><%out.print(tasks.getName());%></h4>
                                <p class="card-text"><%out.print(tasks.getDescription());%></p>

                                <a href="/details?id=<%=tasks.getId()%>" class="btn btn-info btn-md">Details </a>
                                </a>
                            </div>
                            <div class="card-footer">

                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" role="switch" id="one<%=i%>"
                                           checked="checked" Cheked>
                                    Active ID:<%out.print(tasks.getId());%>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <% i++;}
        }%>


    </div>

</div>


<%@include file="Script2.jsp" %>
</body>
</html>
