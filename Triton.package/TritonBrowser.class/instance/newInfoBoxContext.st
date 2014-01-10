private
newInfoBoxContext

	^ InfoContext
		package: package value
		klass: self browsedClass
		protocol: protocol value
		method: method value
		classSide: classSide value