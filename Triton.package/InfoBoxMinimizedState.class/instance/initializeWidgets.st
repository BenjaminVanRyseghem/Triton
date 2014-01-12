initialization
initializeWidgets

	super initializeWidgets.
	title := self newLabel.
		
	title whenBuiltDo: [ title emphasis: 1 ].