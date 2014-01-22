initialization
initializeWidgets

	view := RoassalModel new.
	view whenLastEventChangedDo: [ :ann | self box action cull: ann ]