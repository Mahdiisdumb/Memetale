.localvar 0 arguments

:[0]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i audio_stop_all(argc=0)
popz.v

:[end]