# WeakReference

[![MIT License](https://img.shields.io/github/license/vsanthanam/WeakReference)](https://github.com/vsanthanam/WeakReference/blob/main/LICENSE)
[![Package Releases](https://img.shields.io/github/v/release/vsanthanam/WeakReference)](https://github.com/vsanthanam/WeakReference/releases)
[![Build Results](https://img.shields.io/github/workflow/status/vsanthanam/WeakReference/spm-build-test)](https://img.shields.io/github/workflow/status/vsanthanam/WeakReference/spm-build-test)
[![Swift Version](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FWeakReference%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/vsanthanam/WeakReference)
[![Supported Platforms](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FWeakReference%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/vsanthanam/WeakReference)

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

```swift
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
