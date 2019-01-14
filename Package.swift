import PackageDescription


let package = Package(
  name: "Xanilla",
  dependencies: [
    .Package(url: "https://github.com/nestproject/Nest.git", majorVersion: 0, minor: 4),
    .Package(url: "https://github.com/nestproject/Inquiline.git", majorVersion: 0, minor: 4),
    .Package(url: "https://github.com/kylef/Curassow.git", majorVersion: 0, minor: 6),
  ]
)
