.localvar 0 arguments

:[0]
pushglb.v global.plot
push.d 19.9
cmp.d.v LT
bf [5]

:[1]
pushi.e 766
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 766.image_index
pop.v.v self.image_index
b [4]

:[3]
pushi.e 0
pop.v.i self.image_index

:[4]
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v

:[5]
pushglb.v global.plot
push.d 19.9
cmp.d.v EQ
bf [7]

:[6]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 1208
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 1
pop.v.i global.interact
pushi.e 20
pop.v.i global.plot

:[end]