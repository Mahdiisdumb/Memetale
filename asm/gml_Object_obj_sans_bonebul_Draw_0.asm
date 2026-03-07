.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner
push.v self.z_b
mul.v.v
call.i sin(argc=1)
push.v self.z_a
mul.v.v
pop.v.v self.z_h
push.v self.yinit
push.v self.z_h
add.v.v
pop.v.v self.y
push.v self.type
pushi.e 0
cmp.i.v EQ
bt [2]

:[1]
push.v self.type
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [17]

:[4]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.width
pushi.e 0
cmp.i.v GT
bf [17]

:[5]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.i 16777215
pop.v.i self.image_blend

:[7]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.i 16754964
pop.v.i self.image_blend

:[9]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.le
add.v.v
pushi.e 6
conv.i.v
push.v self.width
pushi.e 0
conv.i.v
push.v self.le
pushi.e 0
conv.i.v
pushi.e 681
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[11]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[13]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 6
sub.i.v
push.v self.x
pushi.e 8
add.i.v
push.v self.rc_cut
sub.v.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.rc_le
add.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.width
pushi.e 0
cmp.i.v GT
bf [16]

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 6
sub.i.v
push.v self.x
pushi.e 8
add.i.v
push.v self.rc_cut
sub.v.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.rc_le
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [16]

:[15]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[16]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 6
sub.i.v
push.v self.x
push.v self.le
add.v.v
pushi.e 6
conv.i.v
push.v self.width
pushi.e 0
conv.i.v
push.v self.le
pushi.e 0
conv.i.v
pushi.e 683
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v

:[17]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [23]

:[18]
pushi.e 10
conv.i.v
call.i event_user(argc=1)
popz.v
push.v self.width
pushi.e 0
cmp.i.v GT
bf [23]

:[19]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 6
add.i.v
push.v self.x
push.v self.le
add.v.v
pushi.e 6
conv.i.v
push.v self.width
pushi.e 0
conv.i.v
push.v self.le
pushi.e 0
conv.i.v
pushi.e 681
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
push.v self.rc_cut
sub.v.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 11
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.rc_le
add.v.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.width
pushi.e 0
cmp.i.v GT
bf [22]

:[20]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
push.v self.x
pushi.e 8
add.i.v
push.v self.rc_cut
sub.v.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 11
add.i.v
push.v self.x
pushi.e 2
add.i.v
push.v self.rc_le
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [22]

:[21]
pushi.e 2
conv.i.v
call.i event_user(argc=1)
popz.v

:[22]
push.v self.y
push.v self.x
push.v self.le
add.v.v
pushi.e 6
conv.i.v
push.v self.width
pushi.e 0
conv.i.v
push.v self.le
pushi.e 0
conv.i.v
pushi.e 683
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[23]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [25]

:[24]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
push.v self.x
pushi.e 640
cmp.i.v GT
bf [30]

:[29]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [31]

:[30]
push.e 0

:[31]
bf [end]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[end]