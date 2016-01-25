# Frank

Frank is a DSL for quickly writing web applications in Swift.

##### `Sources/main.swift`

```swift
import Frank

get("/") {
  return "Hello World"
}
```

##### `Package.swift`

```swift
import PackageDescription

let package = Package(
  name: "Hello",
  dependencies: [
    .Package(url: "https://github.com/nestproject/Frank.git", majorVersion: 0, minor: 1)
  ]
)
```

Then build, and run it via:

```shell
$ swift build --configuration release
$ .build/release/Hello
[2016-01-25 07:13:21 +0000] [25678] [INFO] Listening at http://0.0.0.0:8000 (25678)
[2016-01-25 07:13:21 +0000] [25679] [INFO] Booting worker process with pid: 25679
```

Check out the [full example](https://github.com/nestproject/Frank-example)
which can be deployed to Heroku.

### Usage

### Routes

Routes are matched in the order they are defined. The first route that matches
the request is invoked.

```swift
post("/") {
  ...
}

put("/") {
  ...
}

patch("/") {
  ...
}

delete("/") {
  ...
}

head("/") {
  ...
}

options("/") {
  ...
}
```

#### Return Values

The return value of route blocks takes a type that conforms to the
`ResponseConvertible` protocol, which means you can make any type Response
Convertible. For example, you can return a simple string:

```swift
get("/") {
  return "Hello World"
}
```

Return a full response:

```swift
get("/") {
  return Response(.Ok, headers: ["Custom-Header": "value"])
}

post("/") {
  return Response(.Created, body: "User created")
}
```

### Nest

Frank is design around the [Nest](https://github.com/nestproject/Nest) Swift
Web Server Gateway Interface, which allows you to use any Nest-compatible web
servers. The exposed `call` function is a Nest compatible application which can
be passed to a server of your choice.

```swift
import Frank

get("/") {
  return "Custom Server"
}

// Pass "call" to your HTTP server
serve(call)
```
