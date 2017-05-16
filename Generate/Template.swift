/// NOTE: This file is generated for type-safe path routing

import Nest


// The following line is a hack to make it possible to pass "*" as a Parameter
// This makes it possible to annotate the place in the path that is variable
public typealias Parameter = (Int, Int) -> Int


func validateParameter(parser: ParameterParser, _ value: String) -> String? {
  if let parameter = parser.shift() where parameter == value {
    return parameter
  }

  return nil
}


extension Application {
{% for method in methods %}
  /// {{ method }} /
  func {{ method|lowercase }}(closure: RequestType -> ResponseConvertible) {
    route("{{ method }}") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }

{% for parameters in combinations %}{% hasVariables %}
  /// {{ method }}
  func {{ method|lowercase }}{% if hasVariables %}<{% for variable in variables %}P{{ variable }} : ParameterConvertible{% ifnot forloop.last %}, {% endif %}{% endfor %}>{% endif %}({% for variable in parameters %}{% ifnot forloop.first %}_ {% endif %}p{{ forloop.counter }}: {% if variable %}Parameter{% else %}String{% endif %}, {% endfor %} _ closure: (RequestType{% for variable in parameters %}{% if variable %}, P{{ forloop.counter }}{% endif %}{% endfor %}) -> ResponseConvertible) {
    route("{{ method }}") { request in
      let parser = ParameterParser(path: request.path)

      if {% for variable in parameters %}
        let {% if variable %}p{{ forloop.counter }} = P{{ forloop.counter }}(parser: parser){% else %}_ = validateParameter(parser, p{{ forloop.counter }}){% endif %}{% ifnot forloop.last %},{% endif %}{% endfor %}
        where parser.isEmpty
      {
        return {
          closure(request{% for variable in parameters %}{% if variable %}, p{{ forloop.counter }}{% endif %}{% endfor %})
        }
      }

      return nil
    }
  }
{% endfor %}
{% endfor %}
}

{% for method in methods %}
/// {{ method }} /
public func {{ method|lowercase }}(closure: (RequestType) -> ResponseConvertible) {
  application.{{ method|lowercase }}(closure)
}

{% for parameters in combinations %}{% hasVariables %}
/// {{ method }}
public func {{ method|lowercase }}{% if hasVariables %}<{% for variable in variables %}P{{ variable }} : ParameterConvertible{% ifnot forloop.last %}, {% endif %}{% endfor %}>{% endif %}({% for variable in parameters %}{% ifnot forloop.first %}_ {% endif %}p{{ forloop.counter }}: {% if variable %}Parameter{% else %}String{% endif %}, {% endfor %} _ closure: (RequestType{% for variable in parameters %}{% if variable %}, P{{ forloop.counter }}{% endif %}{% endfor %}) -> ResponseConvertible) {
  application.{{ method|lowercase }}({% for parameter in parameters %}p{{ forloop.counter }}, {% endfor %}closure)
}
{% endfor %}{% endfor %}
