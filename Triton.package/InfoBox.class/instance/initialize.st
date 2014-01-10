initialize
initialize
	
	computationBlock := [ #() ] asValueHolder.
	computationBlock whenChangedDo: [ self updateView ].
	context := InfoContext new asValueHolder.
	action := [ :item | ] asValueHolder.
	announcementToRefreshOn := nil asValueHolder.
	announcementToRefreshOn whenChangedDo: [ :new |
		SystemAnnouncer uniqueInstance unsubscribe: self.
		new ifNotNil: [ SystemAnnouncer uniqueInstance on: new send: #refresh to: self ] ].
	
	title := [ '' ] asValueHolder.
	defaultTitle := '' asValueHolder.
	
	super initialize.