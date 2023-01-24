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
<div class="row">
    <div class="col-6 mx-auto">
        <form action="/addtasks" method="post">
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
                    <input type="text" class="form-control" name="get_name" placeholder="Наименование...">

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Описание:</label>

                </div>
            </div>
            <div class="row mt-30">
                <div class="col-12">
                    <textarea class="form-control" name="get_des" rows="3"  placeholder="Описание... "></textarea>

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>Крайний срок:</label>

                </div>
            </div>
            <div class="row mt-30">
                <div class="col-10">
                    <input type="date" class="form-control" name="get_deadline" >

                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <button class="btn btn-success">ADD New Task</button>

                </div>
            </div>

        </form>
    </div>
</div>



</body>
</html>
