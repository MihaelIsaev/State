# State

A simple `@State` property wrapper.

You could declare any variable as `@State`

```swift
@State var connecting = false
```

then you can listen for changes

```swift
connecting.listen { old, new in
    print("connecting var changed from \(old) to \(new)")
}
// or
connecting.listen { new in
    print("connecting var changed from to \(new)")
}
// or even
connecting.listen {
    print("connecting var changed")
}
```
you can create a function with  it
```swift
func test(_ state: State<Bool>) {}
```
and you can pass it into that function
```swift
test($connecting)
```
