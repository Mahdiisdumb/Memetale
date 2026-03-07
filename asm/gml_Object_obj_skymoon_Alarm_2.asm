.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.ch
push.v self.ch
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 375
conv.i.v
pushi.e 250
pushi.e 200
conv.i.v
call.i random(argc=1)
sub.v.i
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
sub.i.v
call.i random(argc=1)
sub.v.v
pushi.e 50
sub.i.v
call.i instance_create(argc=3)
popz.v
b [3]

:[2]
pushi.e 375
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 200
sub.i.v
pushi.e 50
conv.i.v
call.i random(argc=1)
sub.v.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 0
conv.i.v
call.i c_borderwidth(argc=1)
pushi.e 150
sub.i.v
call.i random(argc=1)
add.v.v
pushi.e 60
sub.i.v
call.i instance_create(argc=3)
popz.v

:[3]
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [end]

:[4]
pushi.e 6
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]