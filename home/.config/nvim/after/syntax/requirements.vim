" from https://github.com/raimon49/requirements.txt.vim/blob/master/syntax/requirements.vim

if exists("b:current_syntax") && b:current_syntax == "requirements"
    finish
endif

syn case match

" https://pip.pypa.io/en/stable/reference/requirements-file-format/
" https://pip.pypa.io/en/stable/reference/inspect-report/#example
syn keyword requirementsKeyword implementation_name implementation_version os_name platform_machine platform_release platform_system platform_version python_full_version platform_python_implementation python_version sys_platform contained
syn region requirementsSubst matchgroup=requirementsSubstDelim start="\V${" end="\V}"
syn region requirementsString matchgroup=requirementsStringDelim start=`'` skip=`\\'` end=`'`
syn region requirementsString matchgroup=requirementsStringDelim start=`"` skip=`\\"` end=`"`
syn match requirementsVersion "\v\d+[a-zA-Z0-9\.\-\*]*"
syn region requirementsComment start="[ \t]*#" end="$"
syn match requirementsCommandOption "\v^\[?--?[a-zA-Z\-]*\]?"
syn match requirementsVersionSpecifiers "\v(\=\=\=?|\<\=?|\>\=?|\~\=|\!\=)"
syn match requirementsPackageName "\v^([a-zA-Z0-9][a-zA-Z0-9\-_\.]*[a-zA-Z0-9])"
syn match requirementsExtras "\v\[\S+\]"
syn match requirementsVersionControls "\v(git\+?|hg\+|svn\+|bzr\+).*://.\S+"
syn match requirementsURLs "\v(\@\s)?(https?|ftp|gopher)://?[^\s/$.?#].\S*"
syn match requirementsEnvironmentMarkers "\v;\s[^#]+" contains=requirementsKeyword,requirementsVersionSpecifiers,requirementsString

hi def link requirementsKeyword Keyword
hi def link requirementsSubstDelim Delimiter
hi def link requirementsSubst PreProc
hi def link requirementsStringDelim Delimiter
hi def link requirementsString String
hi def link requirementsVersion Number
hi def link requirementsComment Comment
hi def link requirementsCommandOption Special
hi def link requirementsVersionSpecifiers Boolean
hi def link requirementsPackageName Identifier
hi def link requirementsExtras Type
hi def link requirementsVersionControls Underlined
hi def link requirementsURLs Underlined
hi def link requirementsEnvironmentMarkers Macro

let b:current_syntax = "requirements"

" vim: et sw=4 ts=4 sts=4:
