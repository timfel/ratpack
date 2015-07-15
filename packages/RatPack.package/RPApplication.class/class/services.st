accessing
services

	^ super services select: [:service | service isKindOf: self]