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

(property_declaration
  type: (predefined_type) @halfdark.declarationType (#set! priority 150))
(variable_declaration
  type: (predefined_type) @halfdark.declarationType (#set! priority 150))
