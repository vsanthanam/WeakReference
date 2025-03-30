// WeakReference
// WeakReference.swift
//
// MIT License
//
// Copyright (c) 2025 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

/// A portable weak reference
///
/// Use this wrapper class to pass around weakly-referenced instances of an object.
///
/// ```swift
/// import WeakReference
///
/// var obj: MyObj? = .init( ... )
/// let weakReference = weak(obj!)
///
/// assert(weakReference.obj != nil)
///
/// obj = nil
///
/// assert(weakReference.obj == nil)
/// ```
@available(macOS 10.14, macCatalyst 13.0, iOS 12.0, watchOS 5.0, tvOS 5.0, visionOS 1.0, *)
public final class WeakReference<T: AnyObject> {

    /// Create a weak reference to the provided object instance
    /// - Parameter obj: An instance to weakify
    public init(_ obj: T) {
        self.obj = obj
    }

    /// A weak reference to the object
    public weak var obj: T?

}

/// Create a ``WeakReference`` from an object
/// - Parameter obj: An instance to weakify
/// - Returns: a ``WeakReference`` wrapper containing the provided object
@available(macOS 10.14, macCatalyst 13.0, iOS 12.0, watchOS 5.0, tvOS 5.0, visionOS 1.0, *)
public func weak<T>(
    _ obj: T
) -> WeakReference<T> where T: AnyObject {
    .init(obj)
}
