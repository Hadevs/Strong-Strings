//
//  SubscriptTests.swift
//  strong-stringsTests
//
//  Created by Hadevs on 13/03/2019.
//  Copyright © 2019 Hadevs. All rights reserved.
//

import XCTest

@testable import Strong_Strings

class SubscriptTests: XCTestCase {
	func testUsualSubscription() {
		let str = "abcdefghijklmnoprstq"
		let array = Array(str)
		var countOfValidSymbols = 0
		for index in 0..<str.count where str[index] == array[index] {
			countOfValidSymbols += 1
		}
		XCTAssertEqual(countOfValidSymbols, str.count)
	}
	
	func testOptionalSubscript() {
		let str = "abcd"
		XCTAssertEqual(str[optional: 0], "a")
		XCTAssertEqual(str[optional: 1], "b")
		XCTAssertEqual(str[optional: 2], "c")
		XCTAssertEqual(str[optional: 3], "d")
		XCTAssertNil(str[optional: 4])
	}
}
