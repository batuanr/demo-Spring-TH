<%@ page import="controller.service.CustomerService" %>
<%@ page import="controller.service.CustomerServiceFactory" %>
<%@ page import="controller.model.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form method="post">
<fieldset>
    <legend>Customer Information</legend>
    <table>
        <tr>
            <td>Id</td>
            <td>
                <input type="text" name="id" value="${customer.id}" readonly>
            </td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <input type="text" name="name" value="${customer.name}">
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <input type="text" name="email" value="${customer.email}">
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <input type="text" name="address" value="${customer.address}">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Update">
            </td>
        </tr>
    </table>
</fieldset>
</form>
<a href="/customer">Back to list</a>.