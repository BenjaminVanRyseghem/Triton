protocol
updateView
	| layout |
	layout := self specLayout.
	self needRebuild: false.
	
	self buildWithSpecLayout: layout