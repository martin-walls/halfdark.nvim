;;extends

(class_declaration
  name: (name) @halfdark.definition (#set! priority 150))
(method_declaration
  name: (name) @halfdark.definition (#set! priority 150))

;; Don't highlight `$this` as Special
(variable_name
  (name) @name (#eq? @name "this")) @halfdark.normal
;; Don't highlight `self` in `self::FOO` as Special
(class_constant_access_expression
  (relative_scope) @halfdark.normal (#eq? @halfdark.normal "self"))
