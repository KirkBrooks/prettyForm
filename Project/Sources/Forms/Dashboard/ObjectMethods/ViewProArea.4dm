C_OBJECT:C1216($vp_o)
C_TEXT:C284($file_t;$docJson_t)

Case of 
	: (Form event code:C388=On VP Ready:K2:59)
		$file_t:=Get 4D folder:C485(Current resources folder:K5:16)+"Dashboard"+Folder separator:K24:12+"dashboard.json"
		$docJson_t:=Document to text:C1236($file_t;"UTF-8")
		$vp_o:=JSON Parse:C1218($docJson_t)
		VP IMPORT FROM OBJECT("ViewProArea";$vp_o)
End case 