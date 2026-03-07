.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.l
pushi.e 0
pop.v.i self.t
push.v self.sprite_width
pop.v.v self.w
push.v self.sprite_height
pop.v.v self.h
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
push.v self.x
sub.v.v
pushi.e 1
add.i.v
pop.v.v self.ll
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.y
sub.v.v
pushi.e 1
add.i.v
pop.v.v self.tt
push.v self.x
push.v self.w
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
sub.v.v
pushi.e 1
sub.i.v
pop.v.v self.ww
push.v self.y
push.v self.h
add.v.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
sub.v.v
pushi.e 1
sub.i.v
pop.v.v self.hh
push.v self.ll
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.l
push.v self.ll
add.v.v
pop.v.v self.l

:[2]
push.v self.tt
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
push.v self.t
push.v self.tt
add.v.v
pop.v.v self.t

:[4]
push.v self.ww
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.w
push.v self.ww
sub.v.v
pop.v.v self.w

:[6]
push.v self.hh
pushi.e 0
cmp.i.v GT
bf [8]

:[7]
push.v self.h
push.v self.hh
sub.v.v
pop.v.v self.h

:[8]
push.v self.w
call.i round(argc=1)
pop.v.v self.w
push.v self.h
call.i round(argc=1)
pop.v.v self.h
push.v self.l
call.i round(argc=1)
pop.v.v self.l
push.v self.t
call.i round(argc=1)
pop.v.v self.t
push.v self.w
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.h
pushi.e 0
cmp.i.v GT
b [11]

:[10]
push.e 0

:[11]
bf [19]

:[12]
push.v self.l
push.v self.w
cmp.v.v LT
bf [14]

:[13]
push.v self.t
push.v self.h
cmp.v.v LT
b [15]

:[14]
push.e 0

:[15]
bf [19]

:[16]
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.image_index

:[18]
push.v self.y
push.v self.t
add.v.v
push.v self.x
push.v self.l
add.v.v
push.v self.h
push.v self.t
sub.v.v
push.v self.w
push.v self.l
sub.v.v
push.v self.t
push.v self.l
push.v self.image_index
pushi.e 124
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
sub.i.v
push.v self.x
push.v self.l
add.v.v
push.v self.h
push.v self.t
sub.v.v
push.v self.w
push.v self.l
sub.v.v
push.v self.t
push.v self.l
push.v self.image_index
pushi.e 123
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[19]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 5
sub.i.v
cmp.v.v GT
bf [21]

:[20]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 4
sub.i.v
cmp.v.v LT
b [22]

:[21]
push.e 0

:[22]
bf [26]

:[23]
pushi.e 1
pop.v.i self.drawn
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.blue
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.i 16754964
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[25]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 6
sub.i.v
push.v self.x
pushi.e 9
add.i.v
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 3
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[26]
push.v 744.x
push.v self.x
sub.v.v
call.i abs(argc=1)
pushi.e 15
cmp.i.v LT
bf [28]

:[27]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [32]

:[30]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 744
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 2
sub.i.v
push.v self.x
pushi.e 9
add.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 3
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [32]

:[31]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[32]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
sub.i.v
cmp.v.v LT
bf [34]

:[33]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
add.i.v
cmp.v.v GT
bf [39]

:[38]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [40]

:[39]
push.e 0

:[40]
bf [end]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[end]