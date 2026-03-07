.localvar 0 arguments

:[0]
pushglb.v global.turntimer
pushi.e 600
cmp.i.v LT
bf [6]

:[1]
pushi.e 70
conv.i.v
call.i random(argc=1)
pop.v.v self.rsize
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 40
push.v self.rsize
add.v.i
sub.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e -3
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.bb
conv.v.i
pop.v.v [stacktop]self.hspeed
pushi.e 1
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 1
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.dmg

:[3]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 654
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
push.v self.rsize
add.v.i
add.v.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bb
pushi.e -3
pushi.e 3
conv.i.v
call.i random(argc=1)
sub.v.i
push.v self.bb
conv.v.i
pop.v.v [stacktop]self.hspeed
pushi.e 1
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.blue
pushi.e 1
push.v self.bb
conv.v.i
pop.v.i [stacktop]self.dmg

:[5]
pushi.e 5
pushi.e 20
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
b [7]

:[6]
pushi.e 20
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[7]
push.v global.turntimer
pushi.e 37
add.i.v
pop.v.v global.turntimer

:[end]