.localvar 0 arguments

:[0]
pushi.e 1178
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.splat
push.v self.image_angle
push.v self.splat
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.image_xscale
push.v self.splat
conv.v.i
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.splat
conv.v.i
pop.v.v [stacktop]self.image_yscale
push.v self.speed
push.v self.splat
conv.v.i
pop.v.v [stacktop]self.speed
push.v self.direction
push.v self.splat
conv.v.i
pop.v.v [stacktop]self.direction
pushi.e 2
push.v self.splat
conv.v.i
pop.v.i [stacktop]self.friction
pushi.e 8
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 1179
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
call.i instance_destroy(argc=0)
popz.v

:[end]