private
addClass: e inGroup: g WithHierarchy: hierarchy

	g addItem: [ :item | 
		item
			name: (self buildTabbedNameOf: e in: hierarchy);
			icon: (self classIconFor: e) form;
			action: [ (self browsedClass: e) ifTrue: [ self registerManualNavigation ] ] ]