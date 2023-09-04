Class extends DataClass


exposed Function initData()
	
	var $dataFile : 4D:C1709.File
	var $items : Collection
	var $itemsSelection : cs:C1710.itemSelection
	
	
	$dataFile:=File:C1566("/PACKAGE/Project/Sources/Shared/data/data.json")
	$items:=JSON Parse:C1218($dataFile.getText())
	
	If (ds:C1482.item.all().length>0)
		ds:C1482.item.all().drop()
	End if 
	
	$itemsSelection:=ds:C1482.item.fromCollection($items)
	
	If ($itemsSelection.length#0)
		Web Form:C1735.setMessage("Data sucessfully generated")
	End if 