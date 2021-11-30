<html>

<head>


</head>
<body>

<h3>Training portal</h3>

<!-- Read the favorite programming language cookie -->

<%
	//the default...if there are no cookies
	String favLang="Java";

	//get the cookies from the browser request
	Cookie[] theCookies =request.getCookies();
	
	//find our favorite language cookie
	if (theCookies!=null)

	{
		for(Cookie tempCookie:theCookies)
		{
			
			if("myApp.favoriteLanguage".equals(tempCookie.getName()))
			{
				favLang=tempCookie.getValue();
				break;
			}
		}
	}


%>

<!-- Now show a personalized page... use the "favLang" variable -->


<!-- show new books for this lang -->

<h4>New books for <%=favLang %></h4>
<ul>
	<li>Blah blah blah</li>
	<li>Blah blah blah</li>
	<li>Blah blah blah</li>


</ul>

<h4>Latest News Reports for <%=favLang %></h4>
<ul>
	<li>Blah blah blah</li>
	<li>Blah blah blah</li>
	<li>Blah blah blah</li>


</ul>

<h4>Hot Jobs for <%=favLang %></h4>
<ul>
	<li>Blah blah blah</li>
	<li>Blah blah blah</li>
	<li>Blah blah blah</li>


</ul>

<hr>

<a href ="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>