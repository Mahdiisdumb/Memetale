.localvar 0 arguments

:[0]
push.v self.do_room_goto
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.i self.do_room_goto
pushi.e 278
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]