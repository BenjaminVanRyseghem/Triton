private
initialize

	super initialize.

	self defaultTitle: 'Class Hierarchy'.
	self title: [ :class | class name, '''s hierarchy' ].
	self computationBlock: [ :class | self setCachedHierarchyClass: class ]