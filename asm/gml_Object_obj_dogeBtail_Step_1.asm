.localvar 0 arguments

:[0]
push.v self.tailobj
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v self.tailobj
conv.v.i
push.v [stacktop]self.mercymod
pushi.e 400
conv.i.d
div.d.v
pop.v.v self.image_speed
push.v self.image_speed
pushi.e 2
cmp.i.v GT
bf [3]

:[2]
pushi.e 2
pop.v.i self.image_speed

:[3]
push.v self.tailobj
conv.v.i
push.v [stacktop]self.x
pushi.e 1
sub.i.v
pop.v.v self.x
push.v self.tailobj
conv.v.i
push.v [stacktop]self.y
pop.v.v self.y
b [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]