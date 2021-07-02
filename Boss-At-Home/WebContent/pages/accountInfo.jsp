<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%@include file="../Components/common_links.jsp"%>
<link rel="stylesheet" href="../css/account-style.css">

<title>Account - Boss at Home</title>
</head>
<body>

	<!------------------------------------------------- SEARCH OVERLAY ------------------------------------------->
	<div class="search-overlay" id="search-overlay">
		<form action="">
			<div class="search-input">
				<input type="text" id="input"
					placeholder="Search product or category">
			</div>
		</form>
		<span id="cross-bar"><img src="../images/X.png" alt=""></span>
	</div>



	<!------------------------------------------------ MENU OVERLAY ------------------------------------------------>
	<%@include file="../Components/menu-overlay.jsp"%>

	<main>

		<!-------------------------------------------- NAVIGATION BAR -------------------------------------->
		<nav class="nav">
			<div class="logo">
				<a href="http://localhost:8090/Boss-At-Home/"><h1>
						boss<span>at</span><span id="fon">home</span>
					</h1></a>
			</div>

			<ul class="nav-links">
				<li><img class="svg" id="search" src="../images/search.svg"
					alt="Search" /></li>
				<li id="account-img">
              <a href="accountInfo.jspl">
                <img class="svg" src="../images/account.svg" alt="Account" />
              </a>
              <a href="accountInfo.jsp" id="account-message">&nbsp;
              	<c:set var = "customer" value = "${ customerInfo }"></c:set>
              	<c:if test="${ customer != null }">
              		Hi, 
              		<c:out value="${ customer.firstName }"></c:out>
              	</c:if>
              	<c:if test="${ customer == null }">
              		Login / Register
              	</c:if>
              </a>
            </li>
            <li>
				<li><img class="svg" id="cart" src="../images/cart.svg"
					alt="Cart" /></li>
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
	</main>
	
    
	<!---------------------------------------------------- BEFORE LOGIN FORM CONTAINER ------------------------------------------------>
	<c:set var = "customer" value = "${ customerInfo }"></c:set>
    <c:if test="${ customer == null }">
	
	<section class="container">

		<!------------------------------------------------ LOGIN CONTAINER ------------------------------------------------>
		<div class="login">
			<form action="../LoginController" method="post" id="login-form"
				novalidate>
				<div class="form-heading">
					<h1>Login</h1>
				</div>
				<input type="email" name="log-email" id="log-email"
					placeholder="Email" required> <input type="password"
					name="log-password" minlength="8" id="log-password"
					placeholder="Passsword" required> <input type="submit"
					value="Sign In">
				<div>
					<a id="forgot-link">Forgot your passsword?</a>
				</div>
				<div class="message-container">
					<p id="login-message">
						<span style="color: red;">
							<%@include file="../Components/log-message.jsp"%>
							<c:set var="changePassMsg" value="<%= session.getAttribute(\"change-pass\") %>"></c:set>
							<c:if test="${changePassMsg != null }">
								<span style="color: green;"><c:out value="${ changePassMsg }"></c:out></span>
								<% session.removeAttribute("change-pass"); %>
							</c:if>
						</span>
					</p>
				</div>
			</form>
<!------------------------ CHANGE PASSWORD ----------------------------->

			<div class="change-password">
              <form action="../ChangePasswordController" id="change-password-form" method="post">
                <div class="form-heading">
                  <h1>Change Passsword</h1>
                </div>
                  <input type="email" id="change-email" name="change-email" placeholder="Email" required>
                  <input type="password" id="change-password" name="change-password" placeholder="Create Passsword (Min. 8 Characters)" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" title="Please include at least 1 uppercase character, 1 lowercase character and 1 number.">
                  <input type="submit" value="Change password">
                <div>
                  <a id="login-link">Login to continue</a>
                </div>
                <div class="message-container">
                    <p id="change-message"></p>
                </div>
              </form>
            </div>
            
		</div>

		<!------------------------------------------------ REGISTER CONTAINER ------------------------------------------------>
		<div class="register">
			<form action="../RegisterController" method="post" id="register-form"
				novalidate>
				<div class="form-heading">
					<h1>Register</h1>
				</div>
				<input type="text" id="fname" name="fname" placeholder="First Name"
					required minlength="3" maxlength="30"> <input type="text"
					id="lname" name="lname" placeholder="Last Name" required> <input
					type="email" id="reg-email" name="reg-email" placeholder="Email"
					required> <input type="password" id="reg-password"
					name="reg-password"
					placeholder="Create Passsword (Min. 8 Characters)" required
					pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"
					title="Please include at least 1 uppercase character, 1 lowercase character and 1 number.">
				<input type="submit" value="Create">
				<div class="message-container">
					<p id="register-message">
						<span style="color: green;"><%@include
								file="../Components/reg-message.jsp"%></span>
					</p>
				</div>
			</form>
		</div>
	</section>
	</c:if>
<!---------------------------------------------------- AFTER LOGIN FORM CONTAINER ------------------------------------------------>	
	<c:set var = "customer" value = "${ customerInfo }"></c:set>
    <c:if test="${ customer != null }">
    	<section class="profile-container" id="profile-container">
          <form action="../UpdateController" method="post" class="profile-form" id="profile-form" novalidate>
            <div class="profile-heading">
              Welcome,<br><h1><c:out value="${ customer.firstName }"></c:out>&nbsp;<c:out value="${ customer.lastName }"></c:out></h1>
            </div>  
            	<input type="hidden" name="id" value='<c:out value="${ customer.id }"></c:out>'>
            	<div class="input">
            		<label for="pro-fname">First Name</label> 
            		<input class="input" type="text" name="pro-fname" id="pro-fname" value="<c:out value="${ customer.firstName }" />" placeholder="First Name" required minlength="3" maxlength="30" />
                </div>
                <div class="input">
                	<label for="pro-lname">Last Name</label>
                	<input class="input" type="text" name="pro-lname" id="pro-lname" value="<c:out value='${ customer.lastName }'/>" placeholder="Last Name" required />
                </div>
                <div class="input">
                	<label for="email">Email</label>
                	<input class="input" type="email" name="pro-email" id="pro-email" value="<c:out value="${ customer.email }" />" placeholder="Email" required />
				</div>
				<div class="input">
					<label for="password">Password</label>
					<input class="input" type="text" name="pro-password" id="pro-password" value="<c:out value="${ customer.password }" />" placeholder="Passsword (Min. 8 Characters)" required pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" title="Please include at least 1 uppercase character, 1 lowercase character and 1 number.">
                </div>
                <div class="input">
                	<label for="mobile">Mobile Number</label>
                	<input class="input" type="tel" name="mobile" id="mobile" value="<c:out value="${ customer.mobileNum }" />" placeholder="Mobile Number" required>
                </div>
                <div class="input">
                	<label for="area">Area</label>
                	<input class="input" type="text" name="area" id="area" value="<c:out value="${ customer.area }" />" placeholder="Area" required>
                </div>
                <div class="input">
                	<label for="city">City</label>
                	<input class="input" type="text" name="city" id="city" value="<c:out value="${ customer.city }" />" placeholder="City" required>
                </div>
                <div class="input">
                	<label for="state">State</label>
                	<input class="input" type="text" name="state" id="state" value="<c:out value="${ customer.state }" />" placeholder="State" required>
                </div>
                
                <div class="buttons">
                  <button type="submit">Save Changes</button>
                  <a href="../Components/logout.jsp" id="logout-link">Logout</a>
                </div>
                <div id="message-container">
                  <p id="pro-message">
                  	<span style="color: green;"><%@include
								file="../Components/update-message.jsp"%></span>
                  </p>
                </div>
          </form>
    	</section>
    
    
    
    </c:if>
	
	
	<div class="slider"></div>

	<!--------- SRICPTS -->
	<%@include file="../Components/common_js.jsp"%>
	<script src="../js/profile-info.js"></script>
	<script src="../js/account-app.js"></script>
</body>
</html>