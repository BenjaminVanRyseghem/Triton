initialize
initializeData

	self defaultTitle: 'Implementors'.
	self title: [ :method | 'Implementors of #', method ].
	self action: [ :item | self triggerEvent: #changed with: item ]