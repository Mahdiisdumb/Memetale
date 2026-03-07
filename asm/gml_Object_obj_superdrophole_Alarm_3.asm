.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i 1576.image_alpha
pushi.e 0
pop.v.i 1576.vspeed
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.phasing
pushi.e 822
pushenv [2]

:[1]
pushi.e 1
pop.v.i self.solid

:[2]
popenv [1]
pushi.e 2
pop.v.i global.entrance
pushi.e 149
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.x
pushi.e 640
cmp.i.v LT
bf [4]

:[3]
call.i room_goto_previous(argc=0)
popz.v
b [end]

:[4]
call.i room_goto_next(argc=0)
popz.v

:[end]