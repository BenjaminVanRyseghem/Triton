protocol
updateView
	| layout |
	layout := self specLayout.
	self needRebuild: false.
	
	self buildWithSpecLayout: layout.
	self focusOrder removeAll.
	self boxes do: [ :e | self focusOrder add: e ]