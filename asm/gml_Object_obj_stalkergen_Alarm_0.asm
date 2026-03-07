.localvar 0 arguments

:[0]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 8
add.i.v
pushi.e 119
conv.i.v
call.i random(argc=1)
add.v.v
pop.v.v self.chostx
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.sum
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 670
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 10
add.i.v
push.v self.chostx
call.i instance_create(argc=3)
popz.v

:[2]
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [end]

:[3]
pushi.e 670
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 30
sub.i.v
push.v self.chostx
call.i instance_create(argc=3)
popz.v

:[end]