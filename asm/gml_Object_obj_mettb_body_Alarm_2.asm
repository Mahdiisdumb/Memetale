.localvar 0 arguments

:[0]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=3)
pop.v.v self.side
push.v self.side
push.v self.prevside
cmp.v.v EQ
bf [3]

:[1]
push.v self.side
pushi.e 1
add.i.v
pop.v.v self.side
push.v self.side
pushi.e 2
cmp.i.v GT
bf [3]

:[2]
pushi.e 0
pop.v.i self.side

:[3]
push.v self.side
pop.v.v self.prevside
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.x
pushi.e 30
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.sidex
push.v self.y
push.v self.legh
sub.v.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.sidey

:[5]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.x
pushi.e 140
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.sidex
push.v self.y
pushi.e 35
sub.i.v
push.v self.legh
sub.v.v
pushi.e 10
conv.i.v
call.i random(argc=1)
sub.v.v
pop.v.v self.sidey

:[7]
push.v self.side
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.x
pushi.e 110
add.i.v
pushi.e 30
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.sidex
push.v self.y
push.v self.legh
sub.v.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.sidey

:[9]
push.v self.side
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.v self.x
pushi.e 100
add.i.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.sidex
push.v self.y
push.v self.legh
sub.v.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.sidey

:[11]
pushi.e 407
conv.i.v
push.v self.sidey
push.v self.sidex
call.i instance_create(argc=3)
popz.v

:[end]