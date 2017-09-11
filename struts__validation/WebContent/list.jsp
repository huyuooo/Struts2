<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page isELIgnored="false"%>   
 
 
${date} 
 
 <style>
table {
    border-collapse: collapse;
}
 
td {
    border: 1px solid gray;
}
</style>
 
<table align="center">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>st.index</td>
        <td>st.count</td>
        <td>st.first</td>
        <td>st.last</td>
        <td>st.odd</td>
        <td>st.even</td>
 
    </tr>
 
    <s:iterator value="products" var="p" status="st">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${st.index}</td>
            <td>${st.count}</td>
            <td>${st.first}</td>
            <td>${st.last}</td>
            <td>${st.odd}</td>
            <td>${st.even}</td>
        </tr>
    </s:iterator>
 
</table>
 
   
<s:checkboxlist value="selectedProducts" name="product.id"
   list="products" listValue="name" listKey="id" />
   
<s:radio value="2" name="product.id" list="products" listValue="name"
    listKey="id" />
    
<s:select label="products"
       name="product.id"
       list="products"
       listKey="id"
       listValue="name"
       multiple="true"
       size="3"
       value="selectedProducts"
/> 

<table border="1" cellspacing="0">
 
    <tr>
        <td>id</td>
        <td>name</td>
        <td>products</td>
    </tr>
     
    <s:iterator value="categories" var="c">
        <tr>
            <td>${c.id}</td>
            <td>${c.name}</td>
            <td>
                <s:iterator value="#c.products" var="p">
                    ${p.name}<br/>
                </s:iterator>         
            </td>
        </tr>
    </s:iterator>
 
</table>

<s:debug/>  

    
    
    
    