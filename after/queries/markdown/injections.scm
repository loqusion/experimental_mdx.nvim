; extends
((html_block) @injection.content
 (#set! injection.language "javascript"))

((inline) @injection.content
 (#lua-match? @injection.content "^{")
 (#lua-match? @injection.content "}$")
 (#offset! @injection.content 0 1 0 -1)
 (#set! injection.language "javascript"))

((inline) @injection.content
 (#lua-match? @injection.content "^%s*const")
 (#set! injection.language "javascript"))
((inline) @injection.content
 (#lua-match? @injection.content "^%s*let")
 (#set! injection.language "javascript"))
((inline) @injection.content
 (#lua-match? @injection.content "^%s*var")
 (#set! injection.language "javascript"))

((inline) @injection.content
 (#lua-match? @injection.content "^%s*import")
 (#set! injection.language "javascript"))
((inline) @injection.content
 (#lua-match? @injection.content "^%s*export")
 (#set! injection.language "javascript"))

((inline) @injection.content
 (#lua-match? @injection.content "^%s*await")
 (#set! injection.language "javascript"))
