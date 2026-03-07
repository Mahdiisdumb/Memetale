.localvar 0 arguments

:[0]
push.v self.angle
pushi.e 360
cmp.i.v LT
bf [4]

:[1]
push.v self.bullettype
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.angleadd
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.angleadd
push.v self.angle
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.angle
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[3]
push.v self.x
push.v self.angle
push.v self.radius
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.angle
push.v self.radius
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v self.angle
push.v self.angleadd
add.v.v
pop.v.v self.angle
b [0]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]