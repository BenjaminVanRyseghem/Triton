initialization
initializeMinimizedButton 

	minimizedButton := self newImage
		image: self downIcon;
		action: [ self box minimized: false ];
		yourself