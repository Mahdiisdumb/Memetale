.localvar 0 arguments

:[0]
push.v self.soundtimer
pushi.e 1
sub.i.v
pop.v.v self.soundtimer
push.v self.swaptimer
pushi.e 1
sub.i.v
pop.v.v self.swaptimer
push.v self.swaptimer
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 553
pop.v.i self.sprite_index

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [48]

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.maxlaser
cmp.v.v LT
bf [44]

:[5]
push.v self.x
push.v self.rot
push.v self.laserdist
push.v self.i
mul.v.v
add.v.v
pushi.e 160
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pushi.e 20
add.i.v
pop.v.v self.xx
push.v self.xx
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
cmp.v.v GT
bf [7]

:[6]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.xx

:[7]
push.v self.xx
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
cmp.v.v LT
bf [9]

:[8]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.xx

:[9]
push.v self.y
push.v self.rot
push.v self.laserdist
push.v self.i
mul.v.v
add.v.v
pushi.e 160
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pushi.e 30
add.i.v
pop.v.v self.yy
push.v self.yy
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
cmp.v.v GT
bf [11]

:[10]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.yy

:[11]
push.v self.yy
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v LT
bf [13]

:[12]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.yy

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.laser
pushi.e 1
cmp.i.v EQ
bf [18]

:[14]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.bb
b [17]

:[16]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.bb

:[17]
b [21]

:[18]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.bb
b [21]

:[20]
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
pop.v.i self.bb

:[21]
push.v self.yy
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
cmp.v.v GT
bf [32]

:[22]
pushi.e 3
conv.i.v
push.v self.yy
push.v self.xx
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i draw_line_width(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 744
conv.i.v
push.v self.yy
push.v self.xx
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i collision_line(argc=7)
conv.v.b
bf [31]

:[23]
push.v self.bb
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[25]
push.v self.bb
pushi.e 1
cmp.i.v EQ
bf [31]

:[26]
push.v 744.xprevious
push.v 744.x
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
bt [28]

:[27]
push.v 744.yprevious
push.v 744.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[31]
b [43]

:[32]
push.v self.laserno
pushi.e 0
cmp.i.v GT
bf [43]

:[33]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.laser
push.v self.i
pushi.e 0
cmp.i.v GT
bf [38]

:[34]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.laser
pushi.e 3
cmp.i.v EQ
bf [38]

:[35]
pushi.e -1
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.laser
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.laser
b [38]

:[37]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.laser

:[38]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [43]

:[39]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.laser
pushi.e 3
cmp.i.v EQ
bf [43]

:[40]
pushi.e -1
push.v self.maxlaser
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.laser
pushi.e 1
cmp.i.v EQ
bf [42]

:[41]
pushi.e 2
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.laser
b [43]

:[42]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.laser

:[43]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[44]
push.v self.rottimer
pushi.e 1
sub.i.v
pop.v.v self.rottimer
push.v self.rottimer
pushi.e 0
cmp.i.v LT
bf [46]

:[45]
push.v self.rot
push.v self.rotspeed
sub.v.v
pop.v.v self.rot

:[46]
push.v self.rot
pushi.e -180
cmp.i.v LT
bf [48]

:[47]
push.v self.laserno
pushi.e 1
add.i.v
pop.v.v self.laserno
push.v self.rot
pushi.e 360
add.i.v
pop.v.v self.rot

:[48]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]