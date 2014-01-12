accessing
minimizedButton

	^ "self downIcon asMorph
		on: #mouseDown 
		send: #minimize
		to: self;
		asSpecAdapter" minimizedButton