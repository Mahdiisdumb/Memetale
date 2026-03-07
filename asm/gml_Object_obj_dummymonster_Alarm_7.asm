.localvar 0 arguments

:[0]
pushi.e 4
conv.i.v
push.s "000000010"@47975
conv.s.v
call.i action_move(argc=2)
popz.v
pushi.e 48
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]