import XCTest

let kMaxIterations: Int = 1_000_000

final class ReflectionTests: XCTestCase {

    func testMeasureStringReflectingClass() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = String(reflecting: MyClass.self)
            }
        }
    }

    func testMeasureStringReflectingStruct() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = String(reflecting: MyStruct.self)
            }
        }
    }

    func testMeasureStringReflectingEnum() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = String(reflecting: MyEnum.self)
            }
        }
    }

    func testMeasureStringDescribingClass() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = String(describing: MyClass.self)
            }
        }
    }

    func testMeasureStringDescribingStruct() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = String(describing: MyStruct.self)
            }
        }
    }

    func testMeasureStringDescribingEnum() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = String(describing: MyEnum.self)
            }
        }
    }

    func testMeasureMirrorReflectingDescriptionClass() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = Mirror(reflecting: MyClass.self).description
            }
        }
    }

    func testMeasureMirrorReflectingDescriptionStruct() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = Mirror(reflecting: MyStruct.self).description
            }
        }
    }

    func testMeasureMirrorReflectingDescriptionEnum() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = Mirror(reflecting: MyEnum.self).description
            }
        }
    }

    func testMeasureTypeNameClass() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = _typeName(MyClass.self)
            }
        }
    }

    func testMeasureTypeNameStruct() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = _typeName(MyStruct.self)
            }
        }
    }

    func testMeasureTypeNameEnum() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = _typeName(MyEnum.self)
            }
        }
    }

    func testMeasureStringIterpolationClass() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = "\(MyClass.self)"
            }
        }
    }

    func testMeasureStringIterpolationStruct() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = "\(MyStruct.self)"
            }
        }
    }

    func testMeasureStringIterpolationEnum() {
        measure {
            for _ in 0..<kMaxIterations {
                _ = "\(MyEnum.self)"
            }
        }
    }
}

final class MyClass { }

struct MyStruct { }

enum MyEnum {
    case aCase
}
