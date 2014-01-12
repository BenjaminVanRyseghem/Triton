private
initializeData

	self defaultTitle: 'Class Hierarchy'.
	self title: [ :class | class name, '''s hierarchy' ].
	self computationBlock: [ :class | self setCachedHierarchyClass: class ].
	self action: [ :item | self triggerEvent: #changed with: item ]