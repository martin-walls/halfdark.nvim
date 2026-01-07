;;extends

(class_definition
  name: (identifier) @halfdark.definition (#set! priority 150))
(function_definition
  name: (identifier) @halfdark.definition (#set! priority 150))

(assignment
  left: (identifier) @halfdark.variableDefinition (#set! priority 150))
(as_pattern_target
  (identifier) @halfdark.variableDefinition (#set! priority 150))

; Don't highlight when we pass named parameters when calling a function
(keyword_argument
  name: (identifier) @halfdark.normal (#set! priority 150))

