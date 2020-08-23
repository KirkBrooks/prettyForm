/*  main_form ()
 Created by: Kirk as Designer, Created: 08/22/20, 18:02:04
 ------------------
 Purpose: 

*/

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		sidebar_LB("init")  //  initialize
		Form:C1466.sidebar_LB.data:=sample_data
		
	: (Form event code:C388=On Selection Change:K2:29)
		// notice the form event fires on the Form itself - not on the listbox object
		
		Case of 
			: (FORM Event:C1606.objectName="sidebar_LB")
				If (Form:C1466.sidebar_LB.curItem=Null:C1517)
					OBJECT SET VISIBLE:C603(*;"body_SF_container";False:C215)
				Else 
					OBJECT SET VISIBLE:C603(*;"body_SF_container";True:C214)
					OBJECT SET SUBFORM:C1138(*;"body_SF_container";Form:C1466.sidebar_LB.curItem.subform)
					Form:C1466.body_SF_container:=Form:C1466.sidebar_LB.curItem.sf_data
				End if 
				
		End case 
		
		
End case 
