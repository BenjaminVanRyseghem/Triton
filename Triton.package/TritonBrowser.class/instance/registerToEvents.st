initialize
registerToEvents
	
	SystemAnnouncer uniqueInstance weak
		on: ClassRemoved send: #classRemoved: to: self;
		on: ClassRenamed send: #classRenamed: to: self;
		on: MethodRemoved send: #methodRemoved: to: self;
		on: MethodModified send: #methodModified: to: self.
		
	RPackageOrganizer default announcer weak
		on: RPackageUnregistered send: #packageUnregistred: to: self;
		on: RPackageRenamed send: #packageRenamed: to: self.