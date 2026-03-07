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
add.i.v
pop.v.v self.ww
push.v self.y
push.v self.h
add.v.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
sub.v.v
pushi.e 1
add.i.v
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
bf [end]

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
bf [end]

:[16]
pushbltn.v self.argument3
pushbltn.v self.argument2
pushbltn.v self.argument1
pushbltn.v self.argument0
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
push.v self.sprite_index
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]