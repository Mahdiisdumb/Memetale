.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [3]

:[2]
pushi.e 1180
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.sug
push.v self.i
push.v self.sug
conv.v.i
pop.v.v [stacktop]self.image_index
push.v self.image_angle
push.v self.sug
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.ang
push.v self.sug
conv.v.i
pop.v.v [stacktop]self.ang
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]