<%@page import="java.util.List"%>
<%@page import="com.dao.WishlistDao"%>
<%@page import="com.bean.Wishlist"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<%
	int pid=Integer.parseInt(request.getParameter("pid"));
	int uid=u.getId();
	Wishlist w=new Wishlist();
	w.setPid(pid);
	w.setUid(uid);
	WishlistDao.addToWishlist(w);
	List<Wishlist> list=WishlistDao.getWishlistByUser(uid);
	session.setAttribute("wishlist_count", list.size());
	response.sendRedirect("wishlist.jsp");
%>