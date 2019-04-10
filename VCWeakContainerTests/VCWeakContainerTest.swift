//
//  VCWeakContainerTests.swift
//  VCWeakContainerTests
//
//  Created by Valentin Cherepyanko on 10/04/2019.
//  Copyright © 2019 Valentin Cherepyanko. All rights reserved.
//

import XCTest
@testable import VCWeakContainer

@objc
protocol ISomeAbstraction: AnyObject { }

class SomeClass { }

class SomeObjcClass {}
extension SomeObjcClass: ISomeAbstraction { }

class VCWeakContainerTest: XCTestCase {


	func testContainer() {
		var object: SomeClass? = SomeClass()

		let weakContainer = Weak(object!)

		XCTAssert(weakContainer.object != nil)

		object = nil

		XCTAssert(weakContainer.object == nil)
	}

	func testWeakArray() {
		let array: [Weak<SomeClass>] = [
			Weak(SomeClass()),
			Weak(SomeClass()),
			Weak(SomeClass())
		]

		array.forEach { (weak) in
			XCTAssert(weak.object == nil)
		}
	}

	func testWeakArrayWithAbstractions() {

		let array: [Weak<ISomeAbstraction>] = [
			Weak(SomeObjcClass()),
			Weak(SomeObjcClass()),
			Weak(SomeObjcClass())
		]

		array.forEach { (weak) in
			XCTAssert(weak.object == nil)
		}
	}
}
