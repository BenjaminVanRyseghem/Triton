initialize
initialize

	super initialize.
	
	classBar := BoxesBar new.
	classBar
		when: #definitionChanged send: #definitionChanged: to: self;
		when: #hierarchyChanged send: #hierarchyChanged: to: self.
	self initializeClassBoxes.
	
	methodBar := BoxesBar new.
	methodBar
		when: #senderChanged send: #senderChanged: to: self;
		when: #implementorChanged send: #implementorChanged: to: self.
	self initializeMethodBoxes.