.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
pushi.e 8
pop.v.i self.numm
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pop.v.v self.wid
pushi.e 0
conv.i.v
call.i c_borderheight(argc=1)
pop.v.v self.het
pushi.e 1
push.v self.numm
pushi.e 2
sub.i.v
call.i random(argc=1)
add.v.i
call.i floor(argc=1)
push.v self.numm
div.v.v
pop.v.v self.where
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.wid
push.v self.where
mul.v.v
pushbltn.v self.argument2
sub.v.v
push.v self.sprite_width
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
add.v.v
pushbltn.v self.argument2
add.v.v
pop.v.v self.xx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushbltn.v self.argument1
sub.v.v
pop.v.v self.yy

:[2]
pushbltn.v self.argument0
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
push.v self.wid
push.v self.where
mul.v.v
pushbltn.v self.argument2
sub.v.v
push.v self.sprite_width
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
add.v.v
pushbltn.v self.argument2
add.v.v
pop.v.v self.xx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.yy
pushbltn.v self.argument1
push.v self.sprite_height
cmp.v.v GT
bf [5]

:[4]
push.v self.yy
pushbltn.v self.argument1
push.v self.sprite_height
sub.v.v
add.v.v
pop.v.v self.yy

:[5]
pushbltn.v self.argument0
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.het
push.v self.where
mul.v.v
pushbltn.v self.argument2
sub.v.v
push.v self.sprite_height
sub.v.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
add.v.v
pushbltn.v self.argument2
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.yy
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushbltn.v self.argument1
sub.v.v
pop.v.v self.xx

:[7]
pushbltn.v self.argument0
pushi.e 3
cmp.i.v EQ
bf [end]

:[8]
push.v self.het
push.v self.where
mul.v.v
pushbltn.v self.argument2
sub.v.v
push.v self.sprite_height
sub.v.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
add.v.v
pushbltn.v self.argument2
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.yy
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pop.v.v self.xx
pushbltn.v self.argument1
push.v self.sprite_width
cmp.v.v GT
bf [end]

:[9]
push.v self.xx
pushbltn.v self.argument1
push.v self.sprite_width
sub.v.v
add.v.v
pop.v.v self.xx

:[end]