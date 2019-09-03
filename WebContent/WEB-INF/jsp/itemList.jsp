<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
  <!-- el表达式  -->
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
     <!-- 日期转换 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>itemList</title>
</head>
<body>
<table>
<tr>
<td>商品名称</td>
<td>商品价格</td>
<td>生产日期</td>
<td>商品描述</td>
<td>操作</td>
</tr>
<c:forEach items="${item1 }" var="o">
<tr>
<td>${o.name }</td>
<td>${o.price }</td>
<td><fmt:formatDate value="${o.createtime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></td>
<td>${o.detail }</td>
<td><a href="${pageContext.request.contextPath}/itemEdit.action?id=${o.id}">修改</a></td>
  <!--  o.id是通过界面隐藏一个ID然后回去数据库查询修改, -->
</tr>




</c:forEach>










</table>









</body>
</html>