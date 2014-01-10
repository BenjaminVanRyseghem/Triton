private-context
adoptContext: aContext 

	package value = aContext package ifFalse: [ package value: aContext package ].
	class value = aContext klass ifFalse: [ class value: aContext klass ].
	protocol value = aContext protocol ifFalse: [ protocol value: aContext protocol ].
	method value = aContext method ifFalse: [ method value: aContext method ].
	classSide value = aContext classSide ifFalse: [ classSide value: aContext classSide ].