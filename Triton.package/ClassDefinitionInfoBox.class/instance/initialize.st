initialize
initialize

	super initialize.
	self defaultTitle: 'Class definition'.
	self action: [ :text :notifyier | self compileClassDefinition: text notifying: notifyier ].
	self title: [ :class | class name, '''s definition' ].
	self computationBlock: [ :class | class definition ].
	self announcementToRefreshOn: ClassModifiedClassDefinition