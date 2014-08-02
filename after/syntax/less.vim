sy keyword lessSyntax when not true
sy keyword lessSyntax contained extend containedin=cssPseudoClass
sy keyword lessTodo contained TODO FIXME XXX containedin=lessComment,cssComment
sy match lessImport "@import"
sy match lessImportOption "(\%(reference\|inline\|less\|css\|once\|multiple\))"
sy keyword lessFunction length extract
sy match lessNumber "\d\+"
sy match lessNumber "\.\d\+"
sy match lessNumber "\d\+\.\d\+"
sy match lessNumber "[+-]\?\d"
sy match lessVariable /@{[[:alnum:]-_]\+}/ containedin=lessDefinition
sy match lessPseudo /:[[:alnum:]-_]\+/ containedin=lessDefinition,lessNestedSelector contains=cssNoise,cssPseudoClassId,cssUnicodeEscape,cssVendor,cssPseudoClassFn


com -nargs=+ HiLink hi def link <args>

HiLink lessSyntax Keyword
HiLink lessTodo Todo
HiLink lessImport Operator
HiLink lessImportOption Type
HiLink lessNumber Number
hi! def link lessVariable Identifier

delc HiLink
