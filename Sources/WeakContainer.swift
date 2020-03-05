//
//  WeakContainer.swift
//  VCWeakContainer
//
//  Created by Valentin Cherepyanko on 10/04/2019.
//  Copyright © 2019 Valentin Cherepyanko. All rights reserved.
//

public struct Weak<T: AnyObject> {

	public private(set) weak var object: T?

	public init(_ object: T) {
		self.object = object
	}
}
