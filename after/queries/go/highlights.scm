;;extends

(function_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))
(method_declaration
  name: (field_identifier) @halfdark.definition (#set! priority 150))
(type_spec
  name: (type_identifier) @halfdark.definition (#set! priority 150))

(short_var_declaration
  left: (expression_list
          (identifier) @halfdark.variableDefinition (#set! priority 150)))

(range_clause
  left: (expression_list
          (identifier) @halfdark.variableDefinition (#set! priority 150)))
