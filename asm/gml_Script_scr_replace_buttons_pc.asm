.localvar 0 arguments
.localvar 1 str 908

:[0]
pushbltn.v self.argument0
pop.v.v local.str
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [2]

:[1]
push.s "[Z]"@6307
conv.s.v
push.s "\\*Z"@3192
conv.s.v
pushloc.v local.str
call.i string_replace_all(argc=3)
pop.v.v local.str
push.s "[X]"@6309
conv.s.v
push.s "\\*X"@3195
conv.s.v
pushloc.v local.str
call.i string_replace_all(argc=3)
pop.v.v local.str
push.s "[C]"@6310
conv.s.v
push.s "\\*C"@3197
conv.s.v
pushloc.v local.str
call.i string_replace_all(argc=3)
pop.v.v local.str
push.s "key_left"@6311
conv.s.v
call.i scr_gettext(argc=1)
push.s "\\*A"@6312
conv.s.v
pushloc.v local.str
call.i string_replace_all(argc=3)
pop.v.v local.str
push.s "key_right"@6313
conv.s.v
call.i scr_gettext(argc=1)
push.s "\\*D"@6314
conv.s.v
pushloc.v local.str
call.i string_replace_all(argc=3)
pop.v.v local.str

:[2]
pushloc.v local.str
ret.v

:[end]