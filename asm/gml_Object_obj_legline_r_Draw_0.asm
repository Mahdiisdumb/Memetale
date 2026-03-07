.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[1]
push.v self.myspeed
pushi.e 0
cmp.i.v GT
bf [9]

:[2]
push.v self.eo
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[4]
push.v self.eo
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 119
conv.i.v
call.i snd_play(argc=1)
popz.v

:[6]
push.v self.eo
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[8]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 4
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.attacklength
sub.v.v
pushi.e 6
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 6
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 6
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 3
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.attacklength
sub.v.v
pushi.e 5
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 7
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 7
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.attacklength
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.eo
pushi.e 544
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[9]
push.v self.eo
pushi.e 1
add.i.v
pop.v.v self.eo
push.v self.eo
pushi.e 2
cmp.i.v GT
bf [11]

:[10]
pushi.e 0
pop.v.i self.eo

:[11]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[12]
pushi.e 14
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.myspeed
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pop.v.v self.x
push.v self.x
pop.v.v self.nowx
pushi.e 0
pop.v.i self.myx

:[14]
pushi.e 3
pop.v.i self.con

:[15]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [18]

:[16]
push.v self.myx
push.v self.myspeed
add.v.v
pop.v.v self.myx
push.v self.myx
push.v self.attacklength
push.v self.myspeed
sub.v.v
cmp.v.v GTE
bf [18]

:[17]
push.v self.attacklength
pop.v.v self.myx
pushi.e 4
pop.v.i self.con
pushi.e 6
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.shake

:[18]
push.v self.shake
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.v self.shake
pushi.e 1
sub.i.v
pop.v.v self.shake

:[20]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [23]

:[21]
pushi.e 0
pop.v.i self.shake
push.v self.myx
push.v self.myspeed
sub.v.v
pop.v.v self.myx
push.v self.myx
pushi.e 0
cmp.i.v LTE
bf [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
push.v self.con
pushi.e 3
cmp.i.v GTE
bf [end]

:[24]
pushi.e 0
pop.v.i self.i

:[25]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [end]

:[26]
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
pop.v.v self.rr
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 5
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
push.v self.rr
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.myx
sub.v.v
push.v self.sprite_height
push.v self.myx
push.v self.rr
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_part(argc=8)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 18
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.myx
sub.v.v
pushi.e 30
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 9
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
call.i collision_rectangle(argc=7)
conv.v.b
bf [28]

:[27]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[28]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 9
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.myx
sub.v.v
pushi.e 8
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 9
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.myx
sub.v.v
pushi.e 30
add.i.v
call.i collision_line(argc=7)
conv.v.b
bt [30]

:[29]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 9
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.myx
sub.v.v
pushi.e 8
add.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 23
add.i.v
push.v self.i
pushi.e 30
mul.i.v
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.myx
sub.v.v
pushi.e 30
add.i.v
call.i collision_line(argc=7)
conv.v.b
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[33]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [25]

:[end]