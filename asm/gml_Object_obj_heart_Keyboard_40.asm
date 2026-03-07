.localvar 0 arguments

:[0]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.confuse
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.y
pushglb.v global.sp
add.v.v
pop.v.v self.y
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.y
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.y

:[4]
push.v self.confuse
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 8
add.i.v
cmp.v.v GT
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
push.v self.y
pushglb.v global.sp
sub.v.v
pop.v.v self.y
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
push.v self.y
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y

:[end]