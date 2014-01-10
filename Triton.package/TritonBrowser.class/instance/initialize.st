initialize
initialize

	package := nil asValueHolder.
	class := nil asValueHolder.
	protocol := nil asValueHolder.
	method := nil asValueHolder.
	classSide := false asValueHolder.
	abstractTool := AbstractTool new.
	nautilusCache := NautilusUI new.
	timeline := Timeline new.
	
	timeline whenChangedDo: [ self updateTimeline ].
	
	barManager := BarManager on: self.
	super initialize.
	
	self registerToEvents