//%attributes = {}
/*  sample_data () -> collection
 Created by: Kirk as Designer, Created: 08/23/20, 07:44:21
 ------------------
 Purpose: make a data collection of sample data. 
For this demo all the necessary data is in the collection
In production this may or may not be possible but the same
principles apply. 

*/

var $0;$data_col : Collection
var $line : Text

$data_col:=New collection:C1472()

// 

$o:=New object:C1471()
$o.label:="Contact list"
$o.subform:="contact_SF"
// let's go ahead and setup the listbox
$o.sf_data:=New object:C1471("contacts_LB";New object:C1471(\
"name";"contacts_LB";\
"data";fakeNamesCollection;\
"curItem";Null:C1517;\
"pos";0;\
"selected";Null:C1517))

$data_col.push($o)


$o:=New object:C1471()
$o.label:="4D.com"
$o.subform:="webarea_SF"
$o.sf_data:=New object:C1471("URL_Input";"https://us.4d.com/")

$data_col.push($o)

$o:=New object:C1471()
$o.label:="Dashboard"  //   straight from the 4D tech note by Nhat Do
$o.subform:="Dashboard"
$o.sf_data:=New object:C1471()

$data_col.push($o)


// --------------------------------------------------------
$0:=$data_col
