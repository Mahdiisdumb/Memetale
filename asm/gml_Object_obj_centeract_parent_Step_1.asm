.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
pushi.e 0
pop.v.i self.image_index

:[end]