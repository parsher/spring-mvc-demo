<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<title>Student Form</title>
</head>
<body>

<form:form method="post" action="processForm" modelAttribute="student">

First name: <form:input path="firstName"/>
<br><br>
Last name: <form:input path="lastName"/>
<br><br>
Country: <form:select path="country">
	<%-- <form:option value="Brazil" label="Brazil"/>
	<form:option value="France" label="France"/>
	<form:option value="Japan" label="Japan"/>
	<form:option value="Korea" label="Korea"/> --%>
	<form:options items="${student.countryOptions}"/>
</form:select>
<br><br>
Favorite Language:
<%-- Java <form:radiobutton path="favoriteLanguage" value="Java"/>
C# <form:radiobutton path="favoriteLanguage" value="C#"/>
PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>
 --%>
<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  />

<br><br>
Operating Systems:
Linux <form:checkbox path="operatingSystems" value="Linux" />
Mac <form:checkbox path="operatingSystems" value="Mac" />
Window <form:checkbox path="operatingSystems" value="Window" />

<input type="submit" value="Submit"/>

</form:form>


</body>

</html>