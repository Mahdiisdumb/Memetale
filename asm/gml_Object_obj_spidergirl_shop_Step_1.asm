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
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [5]

:[1]
pushi.e 1902
pop.v.i self.sprite_index
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[2]
push.v 784.halt
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.d 0.1
pop.v.d self.image_speed

:[4]
b [end]

:[5]
pushi.e 1901
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[end]