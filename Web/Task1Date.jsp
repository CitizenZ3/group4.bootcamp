<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.Result.kz.bitlab.Task1.Tasks" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="headTask1.jsp"%>
    <%@include file="CSSTask1.jsp"%>
</head>
<body>
<%@include file="nav1Task1.html.jsp"%>
</div>
<div style="width: 100%; display: flex; flex-wrap: wrap">
    <div style="width: 5%; display: flex; flex-wrap: wrap">
        <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
            <button type="button" class="btn btn-dark">Button</button>
            <button type="button" class="btn btn-dark">Button</button>
            <button type="button" class="btn btn-dark">Button</button>
            <button type="button" class="btn btn-dark">Button</button>
            <button type="button" class="btn btn-dark">Button</button>
            <button type="button" class="btn btn-dark">Button</button>
        </div>

    </div>
    <div style="width: 80%; display: flex; flex-wrap: wrap;margin-top: 15px">
        <% ArrayList<Tasks> task=(ArrayList<Tasks>) request.getAttribute("AllTAs");
            if (task!=null){
                for (Tasks tasks:task){
        %>
        <div class="bblock"  id="a" style="width: 25%" ><div class="image-flip" ontouchstart="this.classList.toggle('hover');">
            <div class="mainflip">
                <div class="frontside" >
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
                                <input class="form-check-input" type="checkbox" role="switch" id="one"
                                       onclick="ne()" Cheked>
                                Active    ID:<%out.print(tasks.getId());%>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <%  }}%>



    </div>

</div>




</body>
</html>
