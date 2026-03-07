.localvar 0 arguments

:[0]
pushi.e 4
conv.i.v
push.s "101000101"@50861
conv.s.v
call.i action_move(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v

:[end]