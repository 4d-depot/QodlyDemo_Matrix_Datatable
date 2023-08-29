Class extends DataStoreImplementation

exposed Function getManifestObject() : Object
	var $manifestFile : 4D:C1709.File
	var $manifestObject : Object
	
	$manifestFile:=File:C1566("/PACKAGE/Project/Sources/Shared/manifest.json")
	$manifestObject:=JSON Parse:C1218($manifestFile.getText())
	
	return $manifestObject
	
	
exposed Function updateCSS($cssName : Text; $oldCSSName : Text) : Text
	Web Form:C1735["datatable"].removeCSSClass($oldCSSName)
	Web Form:C1735["datatable"].addCSSClass($cssName)
	return $cssName
	
exposed Function getNull() : Variant
	return Null:C1517