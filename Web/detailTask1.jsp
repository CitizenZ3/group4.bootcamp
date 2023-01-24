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
<%Tasks tsk=(Tasks) request.getAttribute("a");
if (tsk!=null){%>
<div class="row">
    <div class="col-6 mx-auto">

            <div class="row mt-3">
                <div class="col-12">
                    <h1>Новое задание</h1>

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Наименование:</label>

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <input type="text" class="form-control" name="get_name" readonly value="<%=tsk.getName()%>">

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Описание:</label>

                </div>
            </div>
            <div class="row mt-30">
                <div class="col-12">
                    <input type="text" class="form-control" name="get_name" readonly value="<%=tsk.getDescription()%>">

                    </textarea>

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Крайний срок:</label>

                </div>
            </div>
            <div class="row mt-30">
                <div class="col-10">
                    <input type="date" class="form-control" readonly value="<%=tsk.getDeadlineDate()%>" >

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <form action="/hometask1" method="get">
                    <button class="btn btn-success" >Save</button>
                    </form>
                    <form action="/delete" method="get">
                    <button class="btn btn-success" name="get_baton">Delete</button>
                    </form>
                </div>
            </div>


    </div>
</div>
<%}%>



</body>
</html>
