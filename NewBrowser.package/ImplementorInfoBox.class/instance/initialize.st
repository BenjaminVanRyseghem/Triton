initialize
initialize

	super initialize.

	self defaultTitle: 'Implementors'.
	self title: [ :method | 'Implementors of #', method ].
	self computationBlock: [ :method | self sortSendersOf: method ].
	lastSeparators := OrderedCollection new.