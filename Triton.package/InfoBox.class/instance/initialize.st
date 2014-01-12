initialize
initialize
	
	computationBlock := [ #() ] asValueHolder.
	context := InfoContext new asValueHolder.
	action := [ :item | ] asValueHolder.
	announcementToRefreshOn := nil asValueHolder.
	minimized := false asValueHolder.
	announcementToRefreshOn whenChangedDo: [ :new |
		SystemAnnouncer uniqueInstance unsubscribe: self.
		new ifNotNil: [ SystemAnnouncer uniqueInstance on: new send: #refresh to: self ] ].
	
	title := [ '' ] asValueHolder.
	defaultTitle := '' asValueHolder.
	
	self initializeData.

	minimized whenChangedDo: [ :b | 
		b 
			ifTrue: [ self showMinimized ]
			ifFalse: [ self showView ] ].
	computationBlock whenChangedDo: [ self updateView ].
		
	super initialize