private
addClassSideMethodsIn: g
	
	^ ((self browsedClass theMetaClass methodsInProtocol: protocol value) sorted: [ :a :b | a selector <= b selector ])
		do: [ :e | g addItem: [ :item | 
			item
				name: e selector;
				action: [ 
							classSide value: true.
							method value: e selector.
							self registerManualNavigation ] ] ]