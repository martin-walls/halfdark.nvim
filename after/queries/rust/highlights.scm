;;extends

(struct_item
  name: (type_identifier) @halfdark.definition (#set! priority 150))
(function_item
  name: (identifier) @halfdark.definition (#set! priority 150))

; Don't highlight start of attribute as "special" punctuation
(attribute_item
  "#" @halfdark.punctuation (#set! priority 150))
