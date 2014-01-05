initialize
initialize

	package := nil asValueHolder.
	class := nil asValueHolder.
	protocol := nil asValueHolder.
	method := nil asValueHolder.
	classSide := false asValueHolder.
	abstractTool := AbstractTool new.
	
	super initialize.
	self populateBar.
	
	self registerToEvents