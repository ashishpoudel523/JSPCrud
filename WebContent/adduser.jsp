<%@page import="com.dao.StudentDao"%>
<jsp:useBean id="u" class="com.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=StudentDao.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
%>