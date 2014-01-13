private
addInstanceSideMethodsIn: g

	^ ((self browsedClass methodsInProtocol: protocol value) sorted: [ :a :b | a selector <= b selector ])
		do: [ :e | 
			g addItem: [ :item | 
				item
					name: e selector;
					action: [ 
								classSide value: false.
								method value: e selector.
								self registerManualNavigation ] ] ]