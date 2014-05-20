<html> 
<head> 
<title>Country List</title> 
</head> 
<body> 
<h1>Country List</h1> 
<cfinvoke
	component="models.Country"
	method="listAll"
	returnVariable="CountryList"
>
</cfinvoke>
<cfoutput query=CountryList> 
    #Capital# is the capitol of #Name#<br> 
</cfoutput> 
</body> 
</html>