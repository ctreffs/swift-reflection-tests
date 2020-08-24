# Performance of type name reflection in Swift

Run `swift test -c release`.
Measured using `measure` @ 10*1_000_000 iterations.
These are total iteration times.

### _typeName
- testMeasureTypeNameClass - 1.695 sec
- testMeasureTypeNameEnum - 1.685 sec
- testMeasureTypeNameStruct - 1.623 sec

> Returns the demangled qualified name of a metatype.
<https://github.com/apple/swift/blob/master/stdlib/public/core/Misc.swift#L76>
<https://github.com/apple/swift/pull/32113#issue-425565017>

### String describing
- testMeasureStringDescribingClass - 14.649 sec
- testMeasureStringDescribingEnum - 14.713 sec
- testMeasureStringDescribingStruct - 14.381 sec

### String interpolation
- testMeasureStringIterpolationClass - 14.039 sec
- testMeasureStringIterpolationEnum - 13.544 sec
- testMeasureStringIterpolationStruct - 14.225 sec

### String reflecting
- testMeasureStringReflectingClass - 14.734 sec
- testMeasureStringReflectingEnum - 14.947 sec
- testMeasureStringReflectingStruct - 15.554 sec

### Mirror
- testMeasureMirrorReflectingDescriptionClass - 28.457 sec
- testMeasureMirrorReflectingDescriptionEnum - 30.007 sec
- testMeasureMirrorReflectingDescriptionStruct - 30.024 sec
