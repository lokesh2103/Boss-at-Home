<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!------------------------------------- NAVIGATION BAR ------------------------------------------->
<nav class="nav">
	<div class="logo">
		<a href="http://localhost:8090/Boss-At-Home/"><h1>
				boss<span>at</span><span id="fon">home</span>
			</h1></a>
	</div>

	<ul class="nav-links">
		<li><img class="svg" id="search" src="images/search.svg"
			alt="Search" /></li>
		<li id="account-img">
		<c:set var = "customer" value = "${ customerInfo }"></c:set>
		<c:if test="${ customer != null }">
			<a href="Components/logout.jsp">
				<img title="Logout" class="svg" src="images/logout.png" alt="logout" />
			</a> 
		</c:if>
		<c:if test="${ customer == null }">
			<a href="pages/accountInfo.jsp">
				<img class="svg" src="images/account.svg" alt="Account" />
			</a> 
		</c:if>
		
		<a href="pages/accountInfo.jsp" id="account-message"> &nbsp;
				<c:set var = "customer" value = "${ customerInfo }"></c:set>
              	<c:if test="${ customer != null }">
              		Hi, <c:out value="${ customer.firstName }"></c:out>
              	</c:if>
              	<c:if test="${ customer == null }">
              		Login / Register
              	</c:if>
		</a></li>
		<li><img class="svg" id="cart" src="images/cart.svg" alt="Cart" />
		</li>
		<li>
			<!-- HAMBURGER -->
			<div class="menu-bars" id="menu-bars">
				<div class="bar1" id="bar"></div>
				<div class="bar2" id="bar"></div>
				<div class="bar3" id="bar"></div>
			</div>
		</li>
	</ul>
	<div class="nav-slider"></div>
</nav>