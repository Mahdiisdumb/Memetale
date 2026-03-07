.localvar 0 arguments

:[0]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
push.v self.offset
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 676
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 12
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 4
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blt

:[3]
push.v self.offset
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 676
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 12
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 34
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blt

:[5]
push.v self.side
pushi.e -1
cmp.i.v EQ
bf [10]

:[6]
push.v self.offset
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
pushi.e 676
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 12
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 4
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.blt

:[8]
push.v self.offset
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 676
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 12
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 34
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blt

:[10]
push.v self.dmg
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.offset
push.v self.blt
conv.v.i
pop.v.v [stacktop]self.offset
push.v self.side
pushi.e -1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.side
b [13]

:[12]
pushi.e -1
pop.v.i self.side

:[13]
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.firingspeed
pushi.e 2
sub.i.v
pop.v.v self.firingspeed

:[end]