.localvar 0 arguments

:[0]
push.v self.part
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
push.v self.direction
pop.v.v self.remdir
pushi.e 3
conv.i.v
push.v 744.y
pushi.e 2
add.i.v
push.v 744.x
pushi.e 2
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.direction
pop.v.v self.angel
push.v self.remdir
pop.v.v self.direction
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.x
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 22
sub.i.v
cmp.v.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.v self.y
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 4
add.i.v
cmp.v.v GT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[16]
push.v self.side
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.v self.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 22
sub.i.v
cmp.v.v LT
b [19]

:[18]
push.e 0

:[19]
bf [end]

:[20]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]