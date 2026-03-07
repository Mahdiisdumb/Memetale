.localvar 0 arguments

:[0]
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
pushi.e 766
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 766.image_index
pop.v.v self.image_index
b [3]

:[2]
pushi.e 0
pop.v.i self.image_index

:[3]
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v

:[end]