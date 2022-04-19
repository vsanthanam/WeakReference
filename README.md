# Weak

An existential weak reference.
Use this wrapper class to pass around weakly-referenced instances of an object.

```
var obj: MyObj? = .init( ... )
let weakReference = Weak<MyObj>(obj!)

assert(weakReference != nil)

obj = nil

assert(weakReference == nil)
```
