import PathKit
import Stencil


/// Every HTTP method to generate a function for
let methods = ["GET", "HEAD", "PUT", "PATCH", "POST", "DELETE", "OPTIONS"]


func permute(count: Int, items: [[Bool]] = []) -> [[Bool]] {
  if count == 0 {
    return items
  }

  if let item = items.last where item.count == count {
    return items
  }

  let lastItem = items.last ?? []

  return (
    permute(count, items: items + [lastItem + [true]]) +
    permute(count, items: [lastItem + [false]])
  )
}


/// Returns all the possible combinations of functions variable combinations
func combinations() -> [[Bool]] {
  return permute(5)
}


do {
  let namespace = Namespace()
  namespace.registerSimpleTag("hasVariables") { context in
    if let parameters = context["parameters"] as? [Bool] {
      context["hasVariables"] = parameters.contains { $0 }
      context["variables"] = parameters.reduce([(Bool,Int)]()) { accumulator, isVariable in
        let count = accumulator.count + 1
        return accumulator + [(isVariable, count)]
      }.filter { isVariable, _ in isVariable }.map { _, count in count }
    }

    return ""
  }

  let templatePath = Path(__FILE__) + "../Template.swift"
  let template = try Template(path: templatePath)
  let context = Context(dictionary: [
    "methods": methods,
    "combinations": combinations(),
  ])

  let result = try template.render(context, namespace: namespace)
  let destination = Path(__FILE__) + "../../Sources/Generated.swift"

  try destination.write(result)
} catch {
  print("Failed to generate: \(error)")
}
