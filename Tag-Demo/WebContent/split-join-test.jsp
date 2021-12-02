<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<body>

<c:set var="data" value="Singapore,Tokyo,Mumbai,London"/>

<h3><i>Split Demo</i></h3>

<c:set var="citiesArray" value="${fn:split(data,',') }"/>

<c:forEach var="tempCity" items="${citiesArray }">
	${tempCity }<br/>
	
</c:forEach>

<h3><i>Join Demo</i></h3>

<c:set var="fun" value="${fn:join(citiesArray,'*' )}"/>

Result of joining: ${fun}

</body>
</html>