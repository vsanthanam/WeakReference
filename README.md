# WeakReference

An existential weak reference.
Use this wrapper class to pass around weakly-referenced instances of an object.

## Installation

WeakReference is currently distributed exclusively through the [Swift Package Manager](https://www.swift.org/package-manager/). 

To add WeakReference as a dependency to an existing Swift package, add the following line of code to the `dependencies` parameter of your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/vsanthanam/WeakReference.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage

```
import WeakReference

var obj: MyObj? = .init( ... )
let weakReference = weak(obj!)

assert(weakReference.obj != nil)

obj = nil

assert(weakReference.obj == nil)
```

## License

**WeakReference** is available under the MIT license. See the LICENSE file for more information.
