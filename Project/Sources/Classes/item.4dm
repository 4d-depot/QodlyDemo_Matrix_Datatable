Class extends DataClass

exposed Function initData()
	var $dataFile : 4D:C1709.File
	var $items : Collection
	
	var $notDropped : cs:C1710.itemSelection
	
	$notDropped:=ds:C1482.item.all().drop()
	
	$dataFile:=File:C1566("/PACKAGE/Project/Sources/Shared/data/data.json")
	$items:=JSON Parse:C1218($dataFile.getText())
	
	ds:C1482.item.fromCollection($items)
	Web Form:C1735.setMessage("Data created successfully")
	
	