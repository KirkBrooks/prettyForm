//%attributes = {}
C_LONGINT:C283($start_li;$start2_li;$start3_li;$start4_li;$diff_li;$diff2_li)
C_LONGINT:C283($rand1_li;$rand2_li;$rand3_li;$rand4_li;$rand5_li;$rand6_li;$rand7_li;$rand8_li;$rand9_li)
C_COLLECTION:C1488($data1;$data2;$data3;$row1;$row2;$row3;$row4;$row5;$subtitle;$subnumber;$dl_title;$dl_number)


// data could come from anywhere (db table, sql engine, etc)
// generating random data points
$start_li:=750
$start2_li:=1000
$start3_li:=500
$start4_li:=150
$diff_li:=100
$diff2_li:=20


$rand1_li:=Random:C100%($diff_li+1)+$start2_li
$rand2_li:=Random:C100%($diff_li+1)+$start_li
$rand3_li:=Random:C100%($diff_li+1)+$start_li
$rand4_li:=Random:C100%($diff_li+1)+$start3_li
$rand5_li:=Random:C100%($diff_li+1)+$start2_li
$rand6_li:=Random:C100%($diff_li+1)+$start_li
$rand7_li:=Random:C100%($diff_li+1)+$start_li
$rand8_li:=Random:C100%($diff_li+1)+$start3_li
$rand9_li:=Random:C100%($diff2_li+1)+$start4_li


// importing data into vp doc
$data1:=New collection:C1472
$row1:=New collection:C1472(" Region";"Direct";" Redirect";"Total")
$row2:=New collection:C1472(" Europe";$rand1_li;$rand2_li;$rand1_li+$rand2_li)
$row3:=New collection:C1472(" Asia";$rand3_li;$rand4_li;$rand3_li+$rand4_li)
$row4:=New collection:C1472(" Americas";$rand5_li;$rand6_li;$rand5_li+$rand6_li)
$row5:=New collection:C1472(" Misc.";$rand7_li;$rand8_li;$rand7_li+$rand8_li)
$data1.push($row1;$row2;$row3;$row4;$row5)

$data2:=New collection:C1472
$subtitle:=New collection:C1472("New subscribers")
$subnumber:=New collection:C1472($rand9_li)
$data2.push($subnumber;$subtitle)

$data3:=New collection:C1472
$dl_title:=New collection:C1472(" Downloads per second")
$dl_number:=New collection:C1472(55000+$rand9_li)
$data3.push($dl_title;$dl_number)

VP SET VALUES(VP Cell("ViewProArea";0;1);$data3)
VP SET VALUES(VP Cell("ViewProArea";0;4);$data1)
VP SET VALUES(VP Cell("ViewProArea";3;11);$data2)
