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
	
	super initialize.
	bar := BarManager on: self.
	
	self registerToEvents