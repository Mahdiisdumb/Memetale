.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 17
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 5
pop.v.i global.interact
pushi.e 0
pop.v.i global.menuno
pushi.e 2
conv.i.v
call.i control_clear(argc=1)
popz.v

:[end]