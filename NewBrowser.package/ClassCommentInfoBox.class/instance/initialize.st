protocol
initialize

	super initialize.
	self defaultTitle: 'Class comment'.
	self title: [ :class | class name, '''s comment' ].
	self computationBlock: [ :class | class comment ]