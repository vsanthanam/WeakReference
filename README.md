# WeakReference

An existential weak reference.
Use this wrapper class to pass around weakly-referenced instances of an object.

```
import WeakReference

var obj: MyObj? = .init( ... )
let weakReference = weak(obj!)

assert(weakReference.obj != nil)

obj = nil

assert(weakReference.obj == nil)
```
