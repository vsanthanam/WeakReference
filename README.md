# WeakReference

<a href="https://github.com/vsanthanam/WeakReference/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/vsanthanam/WeakReference" />
</a>
<a href="https://github.com/vsanthanam/WeakReference/releases">
    <img src="https://img.shields.io/github/v/release/vsanthanam/WeakReference" />
</a>
<a href="https://github.com/vsanthanam/WeakReference/actions/workflows/spm-build-test">
    <img src="https://img.shields.io/github/workflow/status/vsanthanam/WeakReference/spm-build-test" />
</a>
<a href="https://swift.org">
    <img src="https://img.shields.io/badge/swift-5.6-critical" />
</a>
<a href="https://developer.apple.com">
    <img src="https://img.shields.io/badge/platform-iOS%2011%20%7C%20macOS%2010.13%20%7C%20tvOS%2011%20%7C%20watchOS%204-lightgrey" />
</a>

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

See the [complete documentation](https://weak.tools/docs/documentation/weakreference/) for more information.

## License

**WeakReference** is available under the MIT license. See the LICENSE file for more information.
