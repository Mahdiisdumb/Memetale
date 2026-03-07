.localvar 0 arguments

:[0]
push.v self.deactivate
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.2
add.d.v
pop.v.v self.image_alpha

:[3]
push.v self.deactivate
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
push.d 0.3
cmp.d.v LT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
push.v self.image_angle
pushi.e 25
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xoff
push.v self.image_angle
pushi.e 25
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yoff
push.v self.image_alpha
push.d 0.8
cmp.d.v GTE
bf [9]

:[7]
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
bf [9]

:[8]
call.i scr_damagestandard_x(argc=0)
popz.v

:[9]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]