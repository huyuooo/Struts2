<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
 
<html>
  <body>
    <s:form action="addProduct">
      <s:textfield name="product.name" label="product name" />
      <s:submit value="Submit" /> 
    </s:form>
  </body>
</html>