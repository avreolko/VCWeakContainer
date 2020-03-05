# VCWeakContainer
Generic container with weak link inside.
Can be useful when you need array of weak links 👦🏻

## Usage example
```swift
var array = [Weak<NSString>]()

var string: NSString? = NSString(string: "Hi!")

array.append(.init(string!))
array.append(.init(string!))
array.append(.init(string!))
array.append(.init(string!))

string = nil

print(array.map { $0.object }.compactMap { $0 }.count) // 0
```

## Installation
For now VCWeakContainer supports installation through SPM 📦
