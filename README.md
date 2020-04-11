# VCWeakContainer
A generic container with weak references to its contents.
Can be useful when you need an array of weak references 👦🏻

## Installation
Install with SPM 📦

## Usage
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
