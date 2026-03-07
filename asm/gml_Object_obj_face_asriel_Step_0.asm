.localvar 0 arguments

:[0]
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
b [4]

:[3]
push.d 0.25
pop.v.d self.image_speed

:[4]
pushglb.v global.facechoice
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]