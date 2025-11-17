;;extends

(class_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))
(interface_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))
(record_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))
(struct_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))
(enum_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))
(method_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))
(constructor_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))
(destructor_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))

(variable_declarator
  name: (identifier) @halfdark.variableDefinition (#set! priority 150))
(property_declaration
  name: (identifier) @halfdark.variableDefinition (#set! priority 150))
; Creating a variable as an out parameter
(declaration_expression
  name: (identifier) @halfdark.variableDefinition (#set! priority 150))
; Creating a variable by pattern matching
(declaration_pattern
  name: (identifier) @halfdark.variableDefinition (#set! priority 150))
; Creating a variable in a foreach
(foreach_statement
  left: (identifier) @halfdark.variableDefinition (#set! priority 150))
(foreach_statement
  left: (tuple_pattern
    name: (identifier) @halfdark.variableDefinition (#set! priority 150)))
(catch_declaration
  name: (identifier) @halfdark.variableDefinition (#set! priority 150))

(property_declaration
  type: (predefined_type) @halfdark.normal (#set! priority 150))
(variable_declaration
  type: (predefined_type) @halfdark.normal (#set! priority 150))

((boolean_literal) @halfdark.constant (#set! priority 150))
