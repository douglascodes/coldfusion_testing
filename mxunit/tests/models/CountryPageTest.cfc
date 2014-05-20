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
	
</cfcomponent>