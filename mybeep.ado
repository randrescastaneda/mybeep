*! Version 0.1 Andres Castaneda , <Aug 2012>
cap program drop mybeep
program mybeep
	version 9
	syntax [anything], [ noBOX SECond(numlist max=1)]
	
	* check to determine whether it can be run
	if ("`c(os)'" != "Windows") {
		disp as error "Unfortunately," in smcl "{cmd: mybeep }" as error "only works over Windows."
		error
	}
	
	* Procedure
	if missing("`anything'") {
	  local anything= 6
	}
	if ( "`second'" == "") local second = 0.3
	local sleep = `second'*1000
	forvalues n= 1/`anything' {
	  beep
	  sleep `sleep'
	}
	if ( "`box'" != "nobox" ) shell pause

end 

exit

