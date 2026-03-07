.localvar 0 arguments

:[0]
push.v self.do_room_goto
conv.v.b
bf [end]

:[1]
pushi.e 0
pop.v.i self.do_room_goto
push.v self.do_room_goto_target
call.i room_goto(argc=1)
popz.v

:[end]