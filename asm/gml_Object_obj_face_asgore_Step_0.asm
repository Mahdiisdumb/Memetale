.localvar 0 arguments

:[0]
pushglb.v global.faceemotion
pushi.e 6
cmp.i.v LT
bf [2]

:[1]
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index

:[2]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[3]
push.v 784.halt
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
b [end]

:[5]
push.d 0.25
pop.v.d self.image_speed

:[end]