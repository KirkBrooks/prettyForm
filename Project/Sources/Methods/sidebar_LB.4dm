//%attributes = {}
/*  sidebar_LB ({variant}) -> object
$1:text  an action to perform
 Created by: Kirk as Designer, Created: 07/02/20, 12:33:02
 ------------------
 Purpose: in poroduction I would route all actions having to do with this listbox
through this method. For this demo some of them are managed in the form method. 

*/

C_VARIANT:C1683($1;$2)  //  text or object
C_TEXT:C284($lb_name;$queryStr;$event)
C_OBJECT:C1216($0;$LBO;$querySettings;$this_o;$o;$result_o)
C_COLLECTION:C1488($temp_c)

$lb_name:="sidebar_LB"

If (Form:C1466#Null:C1517)
	// $o:=Form[$lb_name]
	
	Case of 
		: (Count parameters:C259=0)  //  return the meta object
			$temp_c:=Form:C1466[$lb_name].meta
			
			Case of 
				: (This:C1470.ignore)
					$0:=$temp_c[1]
				: (This:C1470.range)
					$0:=$temp_c[2]
				: (This:C1470.data_dictionary_id)
					$0:=$temp_c[3]
					//: (uuid_is_null(This.data_dictionary_id))
					//$0:=$temp_c[4]
				Else 
					$0:=$temp_c[0]
			End case 
			
		: ($1="init")
			$LBO:=New object:C1471  //  ()cs.entiySel_LB.new($lb_name)
			$LBO.name:=$lb_name
			$LBO.data:=Null:C1517
			$LBO.curItem:=New object:C1471
			$LBO.pos:=0
			$LBO.selected:=Null:C1517
			
			
			//  define a nice, default meta object
			$LBO.meta:=New collection:C1472(New object:C1471(\
				"stroke";"automatic";\
				"fill";"automatic";\
				"fontStyle";"normal";\
				"fontWeight";"normal"))
			
/* build a meta expression collection
strike through = IGNORE
italic         = RANGE
			
gray           = UNDEFINED
blue           = FORMULA
===========================
i   = 1  ignored - underline
r   = 2  range   - underline & brown
			
fu  = 3  undefined formula: gray italic
u   = 4  undefined        : gray
			
*/
			$temp_c:=$LBO.meta
			$temp_c.push(New object:C1471(\
				"stroke";"#aeaea";\
				"textDecoration";"underline"))
			
			$temp_c.push(New object:C1471(\
				"stroke";"brown";\
				"textDecoration";"underline"))
			
			$temp_c.push(New object:C1471(\
				"stroke";"#aeaeae";\
				"fontStyle";"italic"))
			
			$temp_c.push(New object:C1471(\
				"stroke";"#aeaeae"))
			
			Form:C1466[$lb_name]:=$LBO  //  initialize the form object for the listbox
			
		: ($1="formEvent")
			$LBO:=Form:C1466[$lb_name]
			
			
		Else 
			TRACE:C157
	End case 
	
End if 
