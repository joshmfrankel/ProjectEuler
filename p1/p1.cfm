
<cfset mult3 = "3">
<cfset mult5 = "5">
<cfset new3 = "0">
<cfset new5 = "0">
<cfset total = "0">

<cfloop from="1" to="999" index="x">
		<cfset new3 = x / mult3>
		<cfset new5 = x / mult5>
		
		<cfif new3 is int(new3)>
			<cfset total += x>
		<cfelse>
			<cfif new5 is int(new5)>
				<cfset total += x>
			</cfif>
		</cfif>
</cfloop>

<cfoutput>#total#</cfoutput>

<!--- 233168 --->