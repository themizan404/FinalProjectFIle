<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <h3>Data Insert Section</h3>
        <form action="/save" mathod="post">
            Name: <input type="text" name="name"/>
            Salary: <input type="text" name="salary"/>
            City: <input type="text" name="city"/>
            <input type="submit" value="Save"/>
        </form>
        <hr><br><br>

        <h3>Data Update Section</h3>
        <form action="/update" mathod="post">
            <input type="hidden" name="id" value="${trainee.id}"/>
            Name: <input type="text" name="name" value="${trainee.name}"/>
            Salary: <input type="text" name="salary" value="${trainee.salary}"/>
            City: <input type="text" name="city" value="${trainee.city}"/>
            <input type="submit" value="Update"/>
        </form>
        <hr><br><br>

        <h3>Data Display Section</h3>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Salary</th>
                    <th scope="col">City</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${map.trainees}" var="trainee">
                    <tr>
                        <td>${trainee.id}</td>
                        <td>${trainee.name}</td>
                        <td>${trainee.salary}</td>
                        <td>${trainee.city}</td>
                        <td>
                            <a href="/edit/${trainee.id}"><input type="button" value="Edit" class="btn btn-info"/></a>
                            <a href="/delete/${trainee.id}"><input type="button" value="Delete" class="btn btn-danger"/></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
