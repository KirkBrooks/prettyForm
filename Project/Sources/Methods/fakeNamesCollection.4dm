//%attributes = {}
/*  fakeNamesCollection ()
 Created by: Kirk as Designer, Created: 08/23/20, 07:54:29
 ------------------
 Purpose: 
this is a very quick and dirty approach to parsing 
*/

var $0;$names_c;$temp_c;$hdr_c;$thisLine_c : Collection
var $line : Text
var $file_o;$o : Object
var $i : Integer

$names_c:=New collection:C1472()

$file_o:=File:C1566(Folder:C1567(fk resources folder:K87:11).path+"fakeNames.csv")
$text:=$file_o.getText()
$lines_c:=Split string:C1554($text;"\r")

// row 1 is header so use it for property names
$hdr_c:=Split string:C1554($lines_c[0];",")

For each ($line;$lines_c;1)
	$thisLine_c:=Split string:C1554($line;",")
	
	$o:=New object:C1471
	For ($i;1;$hdr_c.length)
		$o[$hdr_c[$i-1]]:=$thisLine_c[$i-1]
	End for 
	
	$o.name:=Formula:C1597(This:C1470.LastName+", "+This:C1470.FirstName)
	$o.address:=Formula:C1597(This:C1470.Street+", "+This:C1470.City+", "+This:C1470.State+" "+This:C1470.Zip)
	$names_c.push($o)
	
End for each 

$0:=$names_c
