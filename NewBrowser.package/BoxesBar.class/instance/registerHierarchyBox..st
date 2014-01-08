registring
registerHierarchyBox: aBox

	aBox
		when: #changed
		send: #hierarchyChanged:
		to: self