private
addExtensionClassesIn: g
	| hierarchy |
	
	hierarchy := self buildPackageExtensionHierarchyFor: package value.
	hierarchy sortedElements do: [ :e | self addClass: e inGroup: g WithHierarchy: hierarchy ]