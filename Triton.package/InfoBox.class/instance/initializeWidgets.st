initialization
initializeWidgets

	state := nil asValueHolder.
	self showView.
	self focusOrder add: state value.
	state whenChangedDo: [ self updateView ].