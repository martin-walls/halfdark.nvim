;;extends

(class_declaration
  name: (name) @halfdark.definition (#set! priority 150))
(method_declaration
  name: (name) @halfdark.definition (#set! priority 150))

;; Don't highlight `$this` as Special
(variable_name
  (name) @name (#match? @name "^this$")) @halfdark.normal
