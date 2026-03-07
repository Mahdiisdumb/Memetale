.localvar 0 arguments

:[0]
push.v self.col
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1177
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.egg
push.v self.image_angle
push.v self.egg
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.ang
push.v self.egg
conv.v.i
pop.v.v [stacktop]self.ang
push.v self.vspeed
push.v self.egg
conv.v.i
pop.v.v [stacktop]self.vspeed
push.v self.hspeed
push.v self.egg
conv.v.i
pop.v.v [stacktop]self.hspeed
push.d 0.05
push.v self.egg
conv.v.i
pop.v.d [stacktop]self.friction
pushi.e 1793
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.col

:[end]