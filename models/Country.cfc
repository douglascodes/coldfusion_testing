<cfcomponent displayname="Country" hint="Object Model for countries." output="false" persistent="true" entityName="Country" readonly="true">

<cfproperty name="Code">
<cfproperty name="Name" type="string">
<cfproperty name="Continent" type="string">
<cfproperty name="Region" type="string">
<cfproperty name="SurfaceArea">
<cfproperty name="IndepYear">
<cfproperty name="Population">
<cfproperty name="LifeExpectancy">
<cfproperty name="GNP">
<cfproperty name="GNPOld">
<cfproperty name="LocalName" type="string">
<cfproperty name="GovernmentForm" type="string">
<cfproperty name="HeadOfState" type="string">
<cfproperty name="Capital" fieldtype="one-to-one" cfc="City" mappedby="ID">
<cfproperty name="Code2"> 

<cffunction access="public" name="listAll" returntype="query">
	<cfquery name="q_AllCountries" datasource="DS_World_Test">
		SELECT *
		FROM Country
	</cfquery>
	<cfreturn q_AllCountries>
</cffunction>

</cfcomponent>
