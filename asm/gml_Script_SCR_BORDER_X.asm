.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushbltn.v self.argument2
sub.v.v
push.v self.sprite_width
sub.v.v
call.i random(argc=1)
call.i round(argc=1)
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
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushbltn.v self.argument2
sub.v.v
push.v self.sprite_width
sub.v.v
call.i random(argc=1)
call.i round(argc=1)
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
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushbltn.v self.argument2
sub.v.v
push.v self.sprite_height
sub.v.v
call.i random(argc=1)
call.i round(argc=1)
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
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
pushbltn.v self.argument2
sub.v.v
push.v self.sprite_height
sub.v.v
call.i random(argc=1)
call.i round(argc=1)
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