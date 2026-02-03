; extends

((selector_expression
    operand: (identifier)
    field: (field_identifier) @property (#set! priority 135))
        @selector_with_field
        (#not-has-parent? @selector_with_field call_expression))

((selector_expression
    operand: (selector_expression)
    field: (field_identifier) @property (#set! priority 135))
        @selector_with_field
        (#not-has-parent? @selector_with_field call_expression))
