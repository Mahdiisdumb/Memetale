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
call.i random(argc=1)
call.i round(argc=1)
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
add.v.v
pop.v.v self.xx
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.yy

:[2]
pushbltn.v self.argument0
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
call.i random(argc=1)
call.i round(argc=1)
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
add.v.v
pop.v.v self.xx
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushbltn.v self.argument1
sub.v.v
pop.v.v self.yy

:[4]
pushbltn.v self.argument0
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
call.i random(argc=1)
call.i round(argc=1)
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
add.v.v
pop.v.v self.yy
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pop.v.v self.xx

:[6]
pushbltn.v self.argument0
pushi.e 3
cmp.i.v EQ
bf [end]

:[7]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
sub.v.v
call.i random(argc=1)
call.i round(argc=1)
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
add.v.v
pop.v.v self.yy
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushbltn.v self.argument1
sub.v.v
pop.v.v self.xx

:[end]