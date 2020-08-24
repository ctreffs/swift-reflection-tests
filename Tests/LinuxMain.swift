import XCTest

import ReflectionTests

var tests = [XCTestCaseEntry]()
tests += ReflectionTests.__allTests()

XCTMain(tests)
