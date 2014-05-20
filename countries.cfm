<html> 
<head> 
<title>Country List</title> 
</head> 
<body> 
<h1>Country List</h1> 
<cfquery name="CountryList" datasource="DS_World_Test"> 
    SELECT country.Name as Name, city.Name as Capital
    FROM Country as country, City as city 
    WHERE country.capital = city.id 
</cfquery> 
<cfoutput query=CountryList> 
    #Capital# is the capitol of #Name#<br> 
</cfoutput> 
</body> 
</html>