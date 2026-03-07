.localvar 0 arguments

:[0]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e 2
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.rating
pushi.e 1
sub.i.v
pop.v.v self.rating

:[3]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]