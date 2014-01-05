initialize
initialize

	super initialize.
	
	classBar := BoxesBar new.
	self initializeClassBoxes.
	
	methodBar := BoxesBar new.
	self initializeMethodBoxes.