; extends
((inline) @_inline
 (#lua-match? @_inline "^{")
 (#lua-match? @_inline "^}")) @nospell

((inline) @_inline (#lua-match? @_inline "^%s*const")) @nospell
((inline) @_inline (#lua-match? @_inline "^%s*let")) @nospell
((inline) @_inline (#lua-match? @_inline "^%s*var")) @nospell

((inline) @_inline (#lua-match? @_inline "^%s*import")) @nospell
((inline) @_inline (#lua-match? @_inline "^%s*export")) @nospell

((inline) @_inline (#lua-match? @_inline "^%s*await")) @nospell
