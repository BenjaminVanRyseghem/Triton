protocol
initializeData

	self defaultTitle: 'Class comment'.
	self action: [ :text | self inputClass comment: text asString ].
	self title: [ :class | class name, '''s comment' ].
	self computationBlock: [ :class | class comment ].
	self announcementToRefreshOn: ClassCommented