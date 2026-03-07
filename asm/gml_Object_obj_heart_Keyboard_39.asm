.localvar 0 arguments

:[0]
push.v self.movement
pushi.e 1
cmp.i.v EQ
bt [2]

:[1]
push.v self.movement
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
push.v self.confuse
pushi.e 0
cmp.i.v EQ
bf [7]

:[5]
push.v self.x
pushglb.v global.sp
add.v.v
pop.v.v self.x
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.x
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x

:[7]
push.v self.confuse
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 8
add.i.v
cmp.v.v GT
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
push.v self.x
pushglb.v global.sp
sub.v.v
pop.v.v self.x
pushi.e 1
conv.i.v
call.i control_check(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
push.v self.x
pushglb.v global.sp
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[end]