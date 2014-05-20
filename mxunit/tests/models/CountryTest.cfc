<cfcomponent displayname="CountryTest" extends="mxunit.framework.TestCase">

	<cffunction name="setUp">
		<cfscript>
	    mycomponent = CreateObject("component","models.Country");			
		</cfscript>
	</cffunction>
	
	<cffunction name="tearDown">
	
	</cffunction>
	
	<cffunction name="testQuery">
			<cfset assertIsQuery(mycomponent.listAll())>
	</cffunction>

	<cffunction name="testFindBurundi">
		<cfscript>
	    target = mycomponent.find("Burundi");
		</cfscript>
			<cfset assertEquals(target.Continent,"Africa") >
			<cfset assertEquals(target.Population,6695000) >
			<cfset assertEquals(target.GNP,903.00) >
			<cfset assertEquals(target.Code,"BDI") >
	</cffunction>
	
</cfcomponent>