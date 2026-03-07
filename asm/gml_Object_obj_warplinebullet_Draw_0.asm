.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.rot
push.v self.rotspeed
add.v.v
pop.v.v self.rot
push.v self.rot
push.v self.r
call.i lengthdir_x(argc=2)
pop.v.v self.xpart
push.v self.rot
push.v self.r
call.i lengthdir_y(argc=2)
pop.v.v self.ypart
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 8
conv.i.v
push.v self.y
push.v self.ypart
push.d 1.1
mul.d.v
sub.v.v
push.v self.x
push.v self.xpart
push.d 1.1
mul.d.v
sub.v.v
push.v self.y
push.v self.ypart
push.d 1.1
mul.d.v
add.v.v
push.v self.x
push.v self.xpart
push.d 1.1
mul.d.v
add.v.v
call.i draw_line_width(argc=5)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 6
conv.i.v
push.v self.y
push.v self.ypart
sub.v.v
push.v self.x
push.v self.xpart
sub.v.v
push.v self.y
push.v self.ypart
add.v.v
push.v self.x
push.v self.xpart
add.v.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.ypart
push.d 0.8
mul.d.v
sub.v.v
push.v self.x
push.v self.xpart
push.d 0.8
mul.d.v
sub.v.v
push.v self.y
push.v self.ypart
push.d 0.8
mul.d.v
add.v.v
push.v self.x
push.v self.xpart
push.d 0.8
mul.d.v
add.v.v
call.i collision_line(argc=7)
conv.v.b
bf [2]

:[1]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.y
pushi.e 800
cmp.i.v GT
bt [4]

:[3]
push.v self.y
pushi.e -200
cmp.i.v LT
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
pushglb.v global.turntimer
pushi.e 0
cmp.i.v LT
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]