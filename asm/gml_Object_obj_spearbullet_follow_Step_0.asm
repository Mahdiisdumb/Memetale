.localvar 0 arguments

:[0]
push.v self.image_alpha
push.d 0.05
add.d.v
pop.v.v self.image_alpha
push.v self.image_angle
push.v self.rotspeed
sub.v.v
pop.v.v self.image_angle
push.v self.rotspeed
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.rotspeed
pushi.e 1
sub.i.v
pop.v.v self.rotspeed

:[2]
push.v self.rotspeed
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.speed
pushi.e 1
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 20
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 3
conv.i.v
push.v 744.y
pushi.e 10
add.i.v
push.v 744.x
pushi.e 10
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.3
pop.v.d self.friction
push.v self.direction
pop.v.v self.image_angle

:[7]
push.v self.direction
pushi.e 25
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xoff
push.v self.direction
pushi.e 25
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yoff
push.v self.rotspeed
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.deactivate
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [13]

:[11]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.yoff
add.v.v
push.v self.x
push.v self.xoff
add.v.v
push.v self.y
push.v self.yoff
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.x
push.v self.xoff
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i collision_line(argc=7)
conv.v.b
bf [13]

:[12]
call.i scr_damagestandard_x(argc=0)
popz.v

:[13]
push.v self.deactivate
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
push.v self.image_alpha
push.d 0.1
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]