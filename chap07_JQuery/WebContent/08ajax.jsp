<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%
	Map map = new HashMap();
	map.put("id", "xian");
	map.put("pass", "qwerasdf");
	map.put("age", 19);
	map.put("alive", true);
	map.put("hobby", new String[]{"독서", "공부"});
	ObjectMapper om = new ObjectMapper();
	String str = om.writeValueAsString(map);
	out.println(str);
%>