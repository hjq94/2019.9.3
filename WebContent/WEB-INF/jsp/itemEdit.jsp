<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!--  上传文件需要这样的注释enctype="multipart/form-data",上传的方法是采用post的方法才可以的 -->
 <form action="${pageContext.request.contextPath}/updateItem.action" method="post" enctype="multipart/form-data">
 <table>
    <tr>
     <input type="hidden" name="id" value="${it1.id }"/>  <!-- 隐藏域:提交数据,后台可以根据id来查找需要修改的商品信息 -->
       <td>商品名称</td>
       <td><input type="text" name="name" value="${it1.name }"/></td>
    </tr>
    
     <tr>
       <td>商品价格</td>
       <td><input type="text" name="price" value="${it1.price }"/></td>
    </tr>
 
 
   <%--  <tr>
       <td>商品生产日期</td>
       <td><input type="text" name="createtime" value="<fmt:formatDate value="${it1.createtime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>"/></td>
    </tr> --%>
    
     <tr>
       <td>图片</td>
       <td>
        <c:if test="${it1.pid}!=null">
        
        </c:if>
         <input type="file" name="pictureFile"/>
       </td>
    </tr>
     <tr>
       <td>商品简介</td>
       <td><input type="text" name="detail" value="${it1.detail}"/></td>
    </tr>
    <tr>
      <td><input type="submit"/></td>
    </tr>
 </table>
 </form>
</body>
</html>