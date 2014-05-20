<cfcomponent displayname="Country" hint="Object Model for countries." output="false" persistent="true" entityName="Country">

<cfproperty name="Code" type="string">
<cfproperty name="Name" type="string">
<cfproperty name="Continent" type="string">
<cfproperty name="Region" type="string">
<cfproperty name="SurfaceArea" type="numeric">
<cfproperty name="IndepYear" type="numeric">
<cfproperty name="Population" type="numeric">
<cfproperty name="LifeExpectancy" type="numeric">
<cfproperty name="GNP" type="numeric">
<cfproperty name="GNPOld" type="numeric">
<cfproperty name="LocalName" type="string">
<cfproperty name="GovernmentForm" type="string">
<cfproperty name="HeadOfState" type="string">
<cfproperty name="Capital" fieldtype="one-to-one" cfc="City" mappedby="ID">
<cfproperty name="Code2" type="string"> 

<cffunction access="public" name="listAll" returntype="query" output="false">
	<cfargument name="arg_MaxRows" default=-1 type="numeric">
	<cfquery name="q_AllCountries" datasource="DS_World_Test" maxrows="#arg_MaxRows#">
		SELECT Code, x.Name, Continent, Region, SurfaceArea, IndepYear, x.Population, LifeExpectancy, GNP, GNPOld, LocalName, GovernmentForm, HeadOfState, y.Name as Capital, Code2
		FROM Country as x, City as y
		WHERE x.Capital=y.ID
	</cfquery>
	<cfreturn q_AllCountries>
</cffunction>

</cfcomponent>
