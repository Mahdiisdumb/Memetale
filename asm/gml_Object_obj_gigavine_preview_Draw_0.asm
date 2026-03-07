.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.onoff
pushi.e 1
add.i.v
pop.v.v self.onoff
push.v self.onoff
pushi.e 2
cmp.i.v GT
bf [3]

:[2]
pushi.e 0
pop.v.i self.onoff

:[3]
push.v self.onoff
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[5]
push.v self.onoff
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[7]
push.v self.onoff
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[9]
push.v self.direction
pushi.e 600
conv.i.v
call.i lengthdir_x(argc=2)
pop.v.v self.xxl
push.v self.direction
pushi.e 600
conv.i.v
call.i lengthdir_y(argc=2)
pop.v.v self.yyl
pushi.e 2
conv.i.v
push.v self.y
push.v self.yyl
add.v.v
push.v self.x
push.v self.xxl
add.v.v
pushi.e 8
sub.i.v
push.v self.y
push.v self.x
pushi.e 8
sub.i.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.yyl
add.v.v
push.v self.x
push.v self.xxl
add.v.v
pushi.e 8
add.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
call.i draw_line_width(argc=5)
popz.v
push.v self.nowtime
pushi.e 1
add.i.v
pop.v.v self.nowtime
push.v self.nowtime
push.v self.maxtime
cmp.v.v GT
bf [end]

:[10]
push.v self.direction
pop.v.v self.image_angle
pushi.e 1643
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.gv
push.v self.memorymode
push.v self.gv
conv.v.i
pop.v.v [stacktop]self.memorymode
push.v self.image_angle
push.v self.gv
conv.v.i
pop.v.v [stacktop]self.image_angle
push.v self.memorymode
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[12]
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.visible

:[end]