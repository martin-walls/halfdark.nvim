;;extends

(assignment
  left: (identifier) @halfdark.variableDefinition (#set! priority 150))
(special_variable) @halfdark.variableDefinition (#set! priority 150)

; Don't highlight named parameter assignments
(arguments
  (assignment
    left: (identifier) @halfdark.normal (#set! priority 151)))

(module_declaration
  name: (identifier) @halfdark.definition (#set! priority 150))

; Punctuation
[
 "||"
 "&&"
 "=="
 "!="
 "<"
 ">"
 "<="
 ">="
 "+"
 "-"
 "*"
 "/"
 "%"
 "^"
 "!"
 ":"
 ";"
 ","
 "."
 "["
 "]"
 "{"
 "}"
 "("
 ")"
 "#"
 "="
 ] @halfdark.punctuation (#set! priority 150)

(comment) @halfdark.comment (#set! priority 150)
