

<cfset tick = GetTickCount()>

<cfset A = (1 / Sqr(5))>
<cfset B = ((1+Sqr(5))/2)>
<cfset C = ((1-Sqr(5))/2)>
<cfset Fn = 0>
<cfset total = 0>

<!--- make run faster by deriving formula for largest two fibonacci numbers that equal 4 mil --->
<cfloop from=0 to=35 index="n">
	<cfif Fn LT 4000000>
		<cfset Fn = A*(((B)^n)-((C)^n))>
		
		<cfif Fn mod 2 EQ 0>
			<cfset total += Fn>
		</cfif>
		
		<cfoutput>#Fn# <br /></cfoutput>
	</cfif>
</cfloop>

<cfset tock = GetTickCount()>
<cfset time = (tock-tick)/1000>
<cfoutput>#Fn# (#total#) at #time# s</cfoutput>

