//: **A Quick and Painless Intro to Swift 5 Property Wrappers**
import Foundation

@propertyWrapper
struct Box {
    var value = 0
    var wrappedValue: Int {
        get { value > 50 ? value : 50 }
        set { value = newValue }
    }
}

struct Foo {
    @Box var x: Int
}

var t = Foo()
print(t.x)


@propertyWrapper
struct Base64Encoded {
    var value = ""
    
    var wrappedValue: String {
        get { Data(value.utf8).base64EncodedString() }
        set { value = newValue }
    }
}

struct Payload {
    @Base64Encoded var text: String
}

var p = Payload()
p.text = "Property wrappers are awesome!"
print(p.text)
