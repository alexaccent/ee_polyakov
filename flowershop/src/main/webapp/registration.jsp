<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.lang.String" %>
<%@ include file="layout/header.jsp" %>
<%
    String error = (String) request.getAttribute("error");
%>

<div class="container" >
    <div class="row justify-content-center align-items-center">
        <div class="col-6">
            <div class="text-center">
                <h2>Регистрация</h2>
            </div>
            <div>
            <% if (error != null && !error.isEmpty()) { %>
                <div class="alert alert-danger" role="alert">
                  <%
                   out.println(error);
                   request.removeAttribute("error");
                  %>
                </div>
            <% } %>
            <form method="POST" action="/registration" class="mb-5">
              <div class="form-group">
                <label for="login">Логин</label>
                <input type="text" name="login" class="form-control" id="login" placeholder="Login">
              </div>
              <div class="form-group">
                <label for="phone">Телефон</label>
                <input type="tel" name="phone" class="form-control" id="phone" placeholder="Phone">
              </div>
              <div class="form-group">
                <label for="address">Адрес</label>
                <input type="text" name="address" class="form-control" id="address" placeholder="Address">
              </div>
              <div class="form-group">
                <label for="password">Пароль</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Password">
              </div>
              <button type="submit" class="btn btn-primary">Регистрация</button>
            </form>
        </div>
    </div>
</div>

<%@ include file="layout/footer.jsp" %>
