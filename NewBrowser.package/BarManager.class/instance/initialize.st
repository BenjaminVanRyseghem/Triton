initialize
initialize

	super initialize.
	
	classBar := BoxesBar new.
	classBar 
		owner: self;
		when: #hierarchyChanged send: #hierarchyChanged: to: self.
	self initializeClassBoxes.
	
	methodBar := BoxesBar new.
	methodBar
		owner: self;
		when: #senderChanged send: #senderChanged: to: self;
		when: #implementorChanged send: #implementorChanged: to: self.
	self initializeMethodBoxes.