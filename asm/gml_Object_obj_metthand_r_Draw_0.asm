.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 18
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 2
sub.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.segx
pushi.e 2
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.y
pushi.e 16
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.y
pushi.e 4
add.i.v
push.v self.segx
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.v self.segx
pop.v.v self.i

:[1]
push.v self.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v GT
bf [3]

:[2]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 18
add.i.v
push.v self.i
push.v self.y
pushi.e 2
add.i.v
push.v self.i
call.i draw_line_width(argc=5)
popz.v
push.v self.i
pushi.e 20
sub.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.anim
push.d 0.25
add.d.v
pop.v.v self.anim
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
push.v self.segx
push.v self.yseg
sub.v.v
push.v self.anim
pushi.e 566
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[5]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.y
push.v self.segx
push.v self.yseg
sub.v.v
push.v self.anim
pushi.e 567
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[7]
push.v self.y
push.v self.segx
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.segx
push.v self.yseg
sub.v.v
pushi.e 20
add.i.v
push.v self.y
push.v self.segx
push.v self.yseg
sub.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [13]

:[8]
pushi.e 129
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.segx
push.v self.yseg
sub.v.v
pushi.e 20
add.i.v
push.v self.y
push.v self.segx
push.v self.yseg
sub.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.g
push.v self.g
conv.v.i
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.on
b [13]

:[12]
pushi.e 0
pop.v.i self.on

:[13]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 10
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.y
pushi.e 4
sub.i.v
push.v self.segx
pushi.e 16
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [17]

:[14]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 10
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.y
pushi.e 4
sub.i.v
push.v self.segx
pushi.e 16
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.g
pushi.e 30
pop.v.i 744.charge
push.v self.g
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
push.v self.vspeed
push.d 0.75
add.d.v
pop.v.v self.vspeed
push.v self.y
pushi.e 3
add.i.v
pop.v.v self.y
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v

:[17]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
push.v self.y
pushi.e 14
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.y
pushi.e 4
add.i.v
push.v self.segx
pushi.e 12
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [19]

:[18]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[19]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [25]

:[20]
push.v self.segx
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
sub.i.v
cmp.v.v GT
bf [24]

:[21]
push.v self.xm
pushi.e 0
cmp.i.v GTE
bf [23]

:[22]
pushi.e -2
pop.v.i self.xm

:[23]
push.v self.xm
pushi.e 2
sub.i.v
pop.v.v self.xm
push.v self.segx
push.v self.xm
add.v.v
pop.v.v self.segx
b [25]

:[24]
pushi.e 0
pop.v.i self.xm
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 25
sub.i.v
pop.v.v self.segx

:[25]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [31]

:[26]
push.v self.segx
push.v self.segxinit
cmp.v.v LT
bf [30]

:[27]
push.v self.xm
pushi.e 0
cmp.i.v GTE
bf [29]

:[28]
pushi.e 1
pop.v.i self.xm

:[29]
pushi.e 1
pop.v.i self.xm
push.v self.segx
push.v self.xm
add.v.v
pop.v.v self.segx
b [31]

:[30]
pushi.e 0
pop.v.i self.xm
push.v self.segxinit
pop.v.v self.segx

:[31]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.ysegi
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.yseg

:[end]