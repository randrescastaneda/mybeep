{smcl}
{* *! version 1.0 28 Aug 2012}{...}
{viewerjumpto "Syntax" "examplehelpfile##syntax"}{...}
{viewerjumpto "Description" "examplehelpfile##description"}{...}
{viewerjumpto "Options" "examplehelpfile##options"}{...}
{viewerjumpto "Remarks" "examplehelpfile##remarks"}{...}
{viewerjumpto "Examples" "examplehelpfile##examples"}{...}
{title:Title}
{phang}
{bf:mybeep} {hline 2} Module to notify user when a routine has finished or got into an error during the process.
{cmd:mybeep} {err:Runs over Windows only}

{marker syntax}{...}
{title:Syntax}
{p 8 17 2}
{cmdab:mybeep}
[{it:number of beeps}]
[{cmd:,}
{it:options}]

{synoptset 30 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:Main}
{synopt:{opt nobox}} The DOS box won’t be displayed.{p_end}
{synopt:{opt sec:ond(numlist max=1)}} Number of seconds between each beep{p_end}
{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Description}
{pstd}
{cmd:mybeep} sends the {it: number of beeps} (6 by default) to the computer speakers and displays a DOS box
 that demands from the user to press any key of the keyboard to get the control of Stata again. This
 command is very useful when the user requires to run long routines in Stata and needs (wants) to do
 something else in the computer or be away from it while Stata runs. 


{marker examples}{...}
{title:Examples}
{dlgtab: run from the do-file editor}

{pstd} By using {cmd:capture noisly} the user might use {cmd:mybeep} at the end of routine. For instance: {p_end}

{p 10 6 2} capture noisly { {p_end}
{p 10 6 2} ... {it:routine} {p_end}
{p 10 6 2} } {p_end}
{p 10 6 2} mybeep 10, sec(0.5) {p_end}

{dlgtab: run from the command window}

{pstd} the user can may anything from the do-file editor and, while Stata is running,  she can type the
 {cmd:mybeep} in the Stata commands window, so either Stata finished the do-file or got into an error 
 {cmd:mybeep} will be executed.{p_end}

{title:Author}
{p}

Andres Castañeda.
Email {browse "mailto:acastanedaa@worldbank.org":acastanedaa@worldbank.org}

{title:Acknowledge}
{p}

I have to thank Dan Blanchette who gave me the idea in Stata list.

{cmd:mybeep} uses the command {cmd:beep} created by Keith Kranker and available 
by typing {stata findit beep}

{title:See Also}

requiered command:

{stata findit beep} (to install this command)
