protocol
initializeData
	
	self defaultTitle: 'Class definition'.
	self title: [ :class | class name, '''s definition' ].
	self action: [ :text :notifyier | self compileClassDefinition: text notifying: notifyier ].
	
	self computationBlock: [ :class | class definition ].
	self announcementToRefreshOn: ClassModifiedClassDefinition