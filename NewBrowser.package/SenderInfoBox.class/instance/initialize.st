initialize
initialize

	super initialize.

	self defaultTitle: 'Senders'.
	self title: [ :method | 'Senders of #', method ].
	self computationBlock: [ :method | self sortSendersOf: method ].
	lastSeparators := OrderedCollection new.