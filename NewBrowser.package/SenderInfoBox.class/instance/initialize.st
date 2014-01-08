initialize
initialize

	super initialize.

	self defaultTitle: 'Senders'.
	self title: [ :method | 'Senders of #', method ].
	self action: [ :item | self triggerEvent: #changed with: item ]