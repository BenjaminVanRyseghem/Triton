instance creation
package: package klass: klass protocol: protocol method: method

	^ self new
		klass: klass;
		method: method;
		package: package;
		protocol: protocol;
		yourself