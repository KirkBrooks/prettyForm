//%attributes = {}
  //  isOK ({object})
  // Written by: Kirk as Designer, Created: 02/06/20, 09:38:03
  // ------------------
  // Purpose: 
C_OBJECT:C1216($1)
C_BOOLEAN:C305($0)

If (Count parameters:C259>0)
	$0:=OB Get:C1224($1;"success";Is boolean:K8:9)
Else   //  then look at OK
	$0:=ok=1
End if 