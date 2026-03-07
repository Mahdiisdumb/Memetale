.localvar 0 arguments

:[0]
pushbltn.v self.argument4
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.sprite_index
pop.v.v self.argument4

:[2]
pushbltn.v self.argument5
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.image_index
pop.v.v self.argument5

:[4]
pushbltn.v self.argument6
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.argument6

:[6]
pushbltn.v self.argument7
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.argument7

:[8]
pushi.e 0
pop.v.i self.l
pushi.e 0
pop.v.i self.t
push.v self.sprite_width
pop.v.v self.w
push.v self.sprite_height
pop.v.v self.h
pushbltn.v self.argument0
pushbltn.v self.argument9
sub.v.v
pushi.e 1
add.i.v
pop.v.v self.ll
pushbltn.v self.argument2
pushbltn.v self.argument10
sub.v.v
pushi.e 1
add.i.v
pop.v.v self.tt
pushbltn.v self.argument9
push.v self.w
add.v.v
pushbltn.v self.argument1
sub.v.v
pushi.e 1
sub.i.v
pop.v.v self.ww
pushbltn.v self.argument10
push.v self.h
add.v.v
pushbltn.v self.argument3
sub.v.v
pushi.e 1
sub.i.v
pop.v.v self.hh
push.v self.ll
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v self.l
push.v self.ll
add.v.v
pop.v.v self.l

:[10]
push.v self.tt
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.v self.t
push.v self.tt
add.v.v
pop.v.v self.t

:[12]
push.v self.ww
pushi.e 0
cmp.i.v GT
bf [14]

:[13]
push.v self.w
push.v self.ww
sub.v.v
pop.v.v self.w

:[14]
push.v self.hh
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.v self.h
push.v self.hh
sub.v.v
pop.v.v self.h

:[16]
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
pushbltn.v self.argument4
call.i sprite_get_width(argc=1)
cmp.v.v GT
bf [18]

:[17]
pushbltn.v self.argument4
call.i sprite_get_width(argc=1)
pop.v.v self.w

:[18]
push.v self.h
pushbltn.v self.argument4
call.i sprite_get_height(argc=1)
cmp.v.v GT
bf [20]

:[19]
pushbltn.v self.argument4
call.i sprite_get_height(argc=1)
pop.v.v self.h

:[20]
push.v self.w
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
push.v self.h
pushi.e 0
cmp.i.v GT
b [23]

:[22]
push.e 0

:[23]
bf [end]

:[24]
push.v self.l
push.v self.w
cmp.v.v LT
bf [26]

:[25]
push.v self.t
push.v self.h
cmp.v.v LT
b [27]

:[26]
push.e 0

:[27]
bf [end]

:[28]
pushbltn.v self.argument8
push.i 16777215
conv.i.v
pushbltn.v self.argument7
pushbltn.v self.argument6
pushbltn.v self.argument10
push.v self.t
add.v.v
pushbltn.v self.argument9
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
pushbltn.v self.argument5
pushbltn.v self.argument4
call.i draw_sprite_part_ext(argc=12)
popz.v

:[end]