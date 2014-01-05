initialization
initializeWidgets

	state := nil asValueHolder.
	self showView.
	state whenChangedDo: [ self updateView ].