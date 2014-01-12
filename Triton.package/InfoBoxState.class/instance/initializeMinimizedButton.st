initialize
initializeMinimizedButton

	minimizedButton := self newImage
		image: self upIcon;
		action: [ self box minimized: true ];
		yourself