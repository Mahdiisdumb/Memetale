.localvar 0 arguments

:[0]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]