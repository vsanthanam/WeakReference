---
title: Get Started
homepage: true
description: Existential Weak References in Swift
layout: page
navorder: 0
---

# Overview

An existential weak reference. Use this wrapper class to pass around weakly-referenced instances of an object.

```swift
import Weak

var obj: MyObj? = .init( ... )
let weakReference = weak(obj!)

assert(weakReference.obj != nil)

obj = nil

assert(weakReference.obj == nil)
```

# Setup

Weak is distributed through the Swift Package Manager. Add the following to your dependencies in your `package.swift` file:

```
dependencies: [
    .package(url: "https://github.com/vsanthanam/weak", from: "0.0.0")
],
```

Other distribution mechanisms will be supported shortly.

# Documentation

Take a look at the [hosted documentation](https://weak.tools/docc/documentation/weak)
