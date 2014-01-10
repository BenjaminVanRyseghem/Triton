instance creation
package: package klass: klass protocol: protocol method: method classSide: classSide

	^ self new
		klass: klass;
		method: method;
		package: package;
		protocol: protocol;
		classSide: classSide;
		yourself