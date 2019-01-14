# Frank

Frank is a DSL for quickly writing web applications in Swift with type-safe
path routing.

##### `Sources/main.swift`

```swift
import Frank

// Handle GET requests to path /
get { request in
  return "Hello World"
}

// Handle GET requests to path /users/{username}
get("users", *) { (request, username: String) in
  return "Hello \(username)"
}
```

##### `Package.swift`

```swift
import PackageDescription

let package = Package(
  name: "Hello",
  dependencies: [
    .Package(url: "https://github.com/kylef/Frank.git", majorVersion: 0, minor: 4)
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

#### Routes

Routes are constructed with passing your path split by slashes `/` as
separate arguments to the HTTP method (e.g. `get`, `post` etc) functions.

For example, to match a path of `/users/kyle/followers` you can use the following:

```swift
get("users", "kyle", "followers") { request in

}
```

You may pass path components along with wildcard (`*`) to match variables in
paths. The wildcard is a placemarker to annotate where the variable path
components are in your path. Frank allows you to use any number of wildcards
in any place of the path, allowing you to match all paths.

The wildcards will map directly to parameters in the path and the variables
passed into your callback. Wildcard parameters are translated to the type
specified in your closure.

```swift
// /users/{username}
get("users", *) { (request, username: String) in
  return "Hi \(username)"
}

// /users/{username}/followers
get("users", *, "followers") { (request, username: String) in
  return "\(username) has 5 followers"
}
```

You may place any type that conforms to `ParameterConvertible`
in your callback, this allows the types to be correctly
converted to your type or user will face a 404 since the
URL will be invalid.

```swift
// /users/{userid}
get("users", *) { (request, userid: Int) in
  return "Hi user with ID: \(userid)"
}
```

##### Custom Parameter Types

Wildcard parameters may be of any type that conforms to `ParameterConvertible`,
this allows you to match against custom types providing you conform to
`ParameterConvertible`.

For example, we can create a Status enum which can be Open or Closed which
conforms to `ParameterConvertible`:

```swift
enum Status : ParameterConvertible {
  case open
  case closed

  init?(parser: ParameterParser) {
    switch parser.shift() ?? "" {
      case "open":
        self = .open
      case "closed":
        self = .closed
      default:
        return nil
    }
  }
}

get("issues", *) { (request, status: Status) in
  return "Issues using status: \(status)"
}
```

##### Adding routes

Routes are matched in the order they are defined. The first route that matches
the request is invoked.

```swift
get {
  ...
}

put {
  ...
}

patch {
  ...
}

delete {
  ...
}

head {
  ...
}

options {
  ...
}
```

#### Return Values

The return value of route blocks takes a type that conforms to the
`ResponseConvertible` protocol, which means you can make any type Response
Convertible. For example, you can return a simple string:

```swift
get {
  return "Hello World"
}
```

Return a full response:

```swift
get {
  return Response(.ok, headers: ["Custom-Header": "value"])
}

post {
  return Response(.created, content: "User created")
}
```

#### Templates

##### Stencil

You can easily use the [Stencil](https://github.com/kylef/Stencil) template
language with Frank. For example, you can create a convenience function to
render templates (called `stencil`):

```swift
import Stencil
import Inquiline
import PathKit


func stencil(path: String, _ context: [String: Any]? = nil) -> ResponseConvertible {
  do {
    let template = try Template(path: Path(path))
    let body = try template.render(Context(dictionary: context))
    return Response(.ok, headers: [("Content-Type", "text/html")], content: body)
  } catch {
    return Response(.internalServerError)
  }
}
```

Which can easily be called from your route to render a template:

```swift
get {
  return stencil("hello.html", ["user": "world"])
}
```

###### `hello.swift`

```html+django
<html>
  <body>
    Hello {{ user }}!
  </body>
</html>
```

### Nest

Frank is design around the [Nest](https://github.com/nestproject/Nest) Swift
Web Server Gateway Interface, which allows you to use any Nest-compatible web
servers. The exposed `call` function is a Nest compatible application which can
be passed to a server of your choice.

```swift
import Frank

get {
  return "Custom Server"
}

// Pass "call" to your HTTP server
serve(call)
```
