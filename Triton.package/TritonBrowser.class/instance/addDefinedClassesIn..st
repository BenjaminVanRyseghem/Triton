private
addDefinedClassesIn: g
	| hierarchy |
	
	hierarchy := self buildPackageHierarchyFor: package value.
	hierarchy sortedElements do: [ :e | self addClass: e inGroup: g WithHierarchy: hierarchy ]