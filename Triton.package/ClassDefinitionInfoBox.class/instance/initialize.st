protocol
initialize

	super initialize.
	self defaultTitle: 'Class definition'.
	self title: [ :class | class name, '''s definition' ].
	self computationBlock: [ :class | class definition ]