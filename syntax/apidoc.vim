" Vim syntax file
" Language   : APIDOC (http://apidoc.me)
" Maintainers: Conor Clifford
" Last Change: Feb 02, 2015

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" apidoc is JSON based... this mightn't work too well...
syn match apidocString "\"[^\"]*\""
syn match apidocLabel "\"name\" *:"
syn match apidocLabel "\"base_url\" *:"
syn match apidocLabel "\"description\" *:"
syn match apidocStructure "\"enums\" *:"
syn match apidocLabel "\"values\" *:"
syn match apidocLabel "\"required\" *:"
syn match apidocLabel "\"default\" *:"
syn match apidocLabel "\"fields\" *:"
syn match apidocLabel "\"type\" *:"
syn match apidocLabel "\"example\" *:"
syn match apidocStructure "\"models\" *:"
syn match apidocStructure "\"resources\" *:"
syn match apidocLabel "\"path\" *:"
syn match apidocLabel "\"operations\" *:"
syn match apidocLabel "\"method\" *:"
syn match apidocLabel "\"parameters\" *:"
syn match apidocLabel "\"default\" *:"
syn match apidocLabel "\"maximum\" *:"
syn match apidocLabel "\"minimum\" *:"
syn match apidocLabel "\"responses\" *:"

syn match apidocType "\"int\""
syn match apidocType "\"long\""
syn match apidocType "\"string\""
syn match apidocType "\"boolean\""
syn match apidocType "\"double\""
syn match apidocType "\"uuid\""
syn match apidocType "\"date-time-iso8601\""
syn match apidocType "\"\[[^\]]*\]\""

syn match apidocResponseGood "\"20[0-9]\" *:"
syn match apidocResponseBad "\"40[0-9]\" *:"
syn match apidocResponseTeapot "\"418\" *:"

syn keyword apidocBoolean true
syn keyword apidocBoolean false

syn match apidocOperation "\"GET\""
syn match apidocOperation "\"POST\""
syn match apidocOperation "\"PATCH\""
syn match apidocOperation "\"PUT\""
syn match apidocOperation "\"DELETE\""

syn match apidocResource "\"(http[^\"]*\""
syn match apidocResource "\"\/[^\"]*\""

syn match apidocInteger "[0-9][0-9]*"

hi link apidocLabel Statement
hi link apidocStructure Structure
hi link apidocBoolean Boolean
hi link apidocResponseGood Constant
hi link apidocResponseBad Constant
hi link apidocResponseTeapot Todo
hi link apidocString String
hi link apidocInteger Number
hi link apidocType Type
hi link apidocResource Underlined
hi link apidocOperation Function

let b:current_syntax = "apidoc"


