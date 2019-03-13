//
//  MasksTests.swift
//  strong-stringsTests
//
//  Created by Hadevs on 13/03/2019.
//  Copyright © 2019 Hadevs. All rights reserved.
//

import XCTest
@testable import Strong_Strings

class MasksTests: XCTestCase {

	func testMask_1() {
		let mask = "*"
		let str = "Hello"
		XCTAssertTrue(str.corresponds(to: mask))
	}
	
	func testMask_2() {
		let mask = "*?"
		let str = "Hello"
		XCTAssertTrue(str.corresponds(to: mask))
	}
	
	func testMask_3() {
		let mask = "?*?"
		let str = "Hello"
		XCTAssertTrue(str.corresponds(to: mask))
	}
	
	func testMask_4() {
		let mask = "?????"
		let str = "Hello"
		XCTAssertTrue(str.corresponds(to: mask))
	}
	
	func testMask_5() {
		let mask = "??????"
		let str = "Hello"
		XCTAssertFalse(str.corresponds(to: mask))
	}
	
	func testMask_6() {
		let mask = "H?l?o"
		let str = "Hello"
		XCTAssertTrue(str.corresponds(to: mask))
	}
	
	func testMask_7() {
		let mask = "*Hello*****"
		let str = "Hello"
		XCTAssertTrue(str.corresponds(to: mask))
	}
	
	func testMask_8() {
		let mask = "**********************************"
		let str = "Hello"
		XCTAssertTrue(str.corresponds(to: mask))
	}
	
	func testMask_9() {
		let mask = "H?*ll?"
		let str = "Hello"
		XCTAssertTrue(str.corresponds(to: mask))
	}
	
	func testMask_10() {
		let mask = "Hallo"
		let str = "Hello"
		XCTAssertFalse(str.corresponds(to: mask))
	}
	
	func testMask_11() {
		let mask = "*??????***"
		let str = "Hello"
		XCTAssertFalse(str.corresponds(to: mask))
	}
}
