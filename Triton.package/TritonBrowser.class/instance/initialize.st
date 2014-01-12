initialize
initialize

	package := nil asValueHolder.
	class := nil asValueHolder.
	protocol := nil asValueHolder.
	method := nil asValueHolder.
	classSide := false asValueHolder.
	project := RegexTritonProject new
		setUp;
		yourself.
	abstractTool := AbstractTool new.
	nautilusCache := NautilusUI new.
	timeline := Timeline new
		when: #nodeClicked
		send: #historyNodeClicked:
		to: self.
	
	timeline whenChangedDo: [ self updateTimeline ].
	
	barManager := BarManager on: self.
	super initialize.
	
	self registerToEvents