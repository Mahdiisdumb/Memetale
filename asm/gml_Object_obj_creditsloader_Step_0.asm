.localvar 0 arguments

:[0]
push.v self.do_room_goto
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.i self.do_room_goto
pushi.e -5
pushi.e 512
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 285
conv.i.v
call.i room_goto(argc=1)
popz.v
b [end]

:[3]
pushi.e 286
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]