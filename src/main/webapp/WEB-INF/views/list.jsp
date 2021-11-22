<%@ page import="controller.service.CustomerService" %>
<%@ page import="controller.service.CustomerServiceFactory" %>
<%@ page import="controller.model.Customer" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%!--%>
<%--    private CustomerService customerService = CustomerServiceFactory.getInstance();--%>
<%--%>--%>
<%--<%--%>
<%--    long count = customerService.count();--%>
<%--    List<Customer> customers = customerService.findAll();--%>
<%--%>--%>
<style>
    table {
        border: 1px solid #000;
    }

    th, td {
        border: 1px dotted #555;
    }
</style>
There are <c:out value="${customers.size()}"></c:out> customer(s) in list.
<table>
    <caption>Customers List</caption>
    <thead>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customers}" var="C">
        <tr>
            <td>
                ${C.id}
            </td>
            <td>
                <a href="info/${C.id}">${C.name}</a>
            </td>
            <td>
                ${C.email}
            </td>
            <td>
                ${C.address}
            </td>
        </tr>
    </c:forEach>

    </tbody>
</table>