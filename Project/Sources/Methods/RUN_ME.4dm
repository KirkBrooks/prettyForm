//%attributes = {}
/*  RUN_ME ()
 Created by: Kirk as Designer, Created: 08/23/20, 09:10:14
 ------------------
 Purpose: demonstrating some ideas for a dashboard/interface form
using native 4D.

The main form is 3 subforms and a sidebar listbox. 
The header and footer forms are static here but it is simple enough
to add some funtionality to them as well. 

I used a listbox for the sidebar because it's easy. 
For the demo I put pretty much all of the data to display in the listbox. 
In production this probably wouldn't work or be desireable.

The Dashboard demo using View Pro is straight from the
tech note:  https://kb.4d.com/assetid=78518



*/



C_LONGINT:C283($1)
C_LONGINT:C283($id;$i;$window)
C_TEXT:C284($procName)

$procName:=Current method name:C684

Case of 
	: (Count parameters:C259=0)
		$id:=Process number:C372($procName)
		
		If ($id=0)
			$id:=New process:C317(Current method name:C684;0;$procName;Current process:C322)
		Else 
			BRING TO FRONT:C326($id)
		End if 
		
	: (Count parameters:C259=1)  //     new process
		
		$window:=Open form window:C675("main_form";Plain form window:K39:10)
		DIALOG:C40("main_form")
		
End case 
