# Optional-Extensions

This extesnions allows you to write more readable code and not to use nil coalliasing operator "??" in order to provide default value. 

Examples:

1. String/Array/Set/Dictionary
```
let someOptionalString: String? = nil

// instead of this 
let someString: String = someOptionalString ?? ""

// we will use this
let someString: String = someOptionalString.orEmpty
```
2. Numbers
```
let someOptionalNumber: Int? = nil

// instead of this 
let someNumber: Int = someOptionalNumber ?? 0

// we will use this
let someNumber: Int = someOptionalNumber.orZero
```
3. Date
```
let someOptinonalDate: Date? = nil

// instead of this 
let someDate: Date = someOptinonalDate ?? Date()

// we will use this
let someDate: Date = someOptinonalDate.orToday
```
4. Bool
```
let someOptionalBool: Bool? = nil

// instead of this 
let someBool: Bool = someOptionalBool ?? false

// we will use this
let someBool: Bool = someOptionalBool.orFalse
```

For optional chaining, it would look like this 
```
let someNumber = (someNonOptionalValue.someOptionalValue?.someNonOptionalNumber).orZero
```
