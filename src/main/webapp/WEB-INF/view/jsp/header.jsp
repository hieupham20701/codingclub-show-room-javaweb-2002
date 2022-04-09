<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.se.showroomcar2002.entity.Link"%>
<%@ page import="com.se.showroomcar2002.config.HeaderConfig"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.servlet.http.HttpUtils.*"%>
<%
HeaderConfig configs = new HeaderConfig();
List<Link> links = configs.getLinks();
String path = javax.servlet.http.HttpUtils.getRequestURL(request).toString();
String[] paths = path.split("/");
path = paths[paths.length - 1];
pageContext.setAttribute("links", links);
pageContext.setAttribute("path", path);
%>
<!-- This example requires Tailwind CSS v2.0+ -->
<nav class="bg-gray-800">
	<div class="max-w-7xl mx-auto px-2 sm:px-6 lg:px-8">
		<div class="relative flex items-center justify-between h-16">
			<div class="absolute inset-y-0 left-0 flex items-center sm:hidden">
				<!-- Mobile menu button-->
				<button type="button"
					class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-white"
					aria-controls="mobile-menu" aria-expanded="false">
					<span class="sr-only">Open main menu</span>
					<!--
            Icon when menu is closed.

            Heroicon name: outline/menu

            Menu open: "hidden", Menu closed: "block"
          -->
					<svg class="block h-6 w-6" xmlns="http://www.w3.org/2000/svg"
						fill="none" viewBox="0 0 24 24" stroke="currentColor"
						aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
					<!--
            Icon when menu is open.

            Heroicon name: outline/x

            Menu open: "block", Menu closed: "hidden"
          -->
					<svg class="hidden h-6 w-6" xmlns="http://www.w3.org/2000/svg"
						fill="none" viewBox="0 0 24 24" stroke="currentColor"
						aria-hidden="true">
            <path stroke-linecap="round" stroke-linejoin="round"
							stroke-width="2" d="M6 18L18 6M6 6l12 12" />
          </svg>
				</button>
			</div>
			<div
				class="flex-1 flex items-center justify-center sm:items-stretch sm:justify-start">
				<div class="flex-shrink-0 flex items-center">
					<img class="block lg:hidden h-8 w-auto"
						src="assets/logo.png" alt="Workflow"> <img
						class="hidden lg:block h-8 w-auto"
						src="assets/logo.png" alt="Workflow">
				</div>
				<div class="hidden sm:block sm:ml-6">
					<div class="flex space-x-4">
						<!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
						<c:forEach items="${links}" var="link">
							<c:choose>
								<c:when test="${ path == link.getPath() }">
									<a href="${ link.getPath() }"
										class="bg-gray-900 text-white px-3 py-2 rounded-md text-sm font-medium"
										aria-current="page">${ link.getTitle() }</a>
								</c:when>
								<c:otherwise>
									<a href="${ link.getPath() }"
										class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">${ link.getTitle() }</a>
								</c:otherwise>
							</c:choose>

						</c:forEach>

					</div>
				</div>
			</div>
			<c:choose>
				<c:when test="false">
					<div
						class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
						<button type="button"
							class="bg-gray-800 p-1 rounded-full text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white">
							<span class="sr-only">Cart</span>
							<!-- Heroicon name: outline/bell -->
							<i class="fas fa-shopping-cart"></i>
						</button>

						<!-- Profile dropdown -->
						<div class="ml-3 relative">
							<div>
								<button type="button"
									class="bg-gray-800 flex text-sm rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white"
									id="user-menu-button" aria-expanded="false"
									aria-haspopup="true">
									<span class="sr-only">Open user menu</span>
									<!-- 							user avatar -->
									<img class="h-8 w-8 rounded-full"
										src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80"
										alt="">
								</button>
							</div>

							<div
								class="origin-top-right absolute right-0 mt-2 w-48 rounded-md shadow-lg py-1 bg-white ring-1 ring-black ring-opacity-5 focus:outline-none"
								role="menu" aria-orientation="vertical"
								aria-labelledby="user-menu-button" tabindex="-1">
								<!-- Active: "bg-gray-100", Not Active: "" -->
								<a href="#" class="block px-4 py-2 text-sm text-gray-700"
									role="menuitem" tabindex="-1" id="user-menu-item-0">Your
									Profile</a> <a href="#"
									class="block px-4 py-2 text-sm text-gray-700" role="menuitem"
									tabindex="-1" id="user-menu-item-1">Settings</a> <a href="#"
									class="block px-4 py-2 text-sm text-gray-700" role="menuitem"
									tabindex="-1" id="user-menu-item-2">Sign out</a>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div
						class="absolute inset-y-0 right-0 flex items-center pr-2 sm:static sm:inset-auto sm:ml-6 sm:pr-0">
						<a href="jsp/login.jsp"
							class="py-2 px-4 bg-blue-500 text-white font-semibold rounded-lg shadow-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-opacity-75">
							Login</a>
						<div class="ml-5 relative">
							<div>
								<a type="button"
									class="bg-gray-800 flex text-sm rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white">
									Sign Up</a>
							</div>

						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<!-- Mobile menu, show/hide based on menu state. -->
	<div class="sm:hidden" id="mobile-menu">
		<div class="px-2 pt-2 pb-3 space-y-1">
			<!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
			<c:forEach items="${links}" var="link">
				<c:choose>
					<c:when test="${ path == link.getPath() }">
						<a href="${ link.getPath() }"
							class="bg-gray-900 text-white block px-3 py-2 rounded-md text-base font-medium"
							aria-current="page">${ link.getTitle() }</a>
					</c:when>
					<c:otherwise>
						<a href="${ link.getPath() }"
							class="text-gray-300 hover:bg-gray-700 hover:text-white block px-3 py-2 rounded-md text-base font-medium">${ link.getTitle() }</a>
					</c:otherwise>
				</c:choose>

			</c:forEach>
		</div>
	</div>
</nav>