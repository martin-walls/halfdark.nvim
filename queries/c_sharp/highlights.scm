;;extends

(class_declaration
  name: (identifier) @halfdark.topLevelDefn (#set! priority 150))

(record_declaration
  name: (identifier) @halfdark.topLevelDefn (#set! priority 150))

(struct_declaration
  name: (identifier) @halfdark.topLevelDefn (#set! priority 150))

(enum_declaration
  name: (identifier) @halfdark.topLevelDefn (#set! priority 150))

(method_declaration
  name: (identifier) @halfdark.topLevelDefn (#set! priority 150))

(variable_declarator
  name: (identifier) @halfdark.variableDefn (#set! priority 150))

(property_declaration
  type: (predefined_type) @halfdark.declarationType (#set! priority 150))

(variable_declaration
  type: (predefined_type) @halfdark.declarationType (#set! priority 150))
