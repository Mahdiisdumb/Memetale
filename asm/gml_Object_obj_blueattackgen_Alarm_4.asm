.localvar 0 arguments

:[0]
push.v 744.y
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 60
sub.i.v
cmp.v.v GT
bf [5]

:[1]
push.v 744.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [3]

:[2]
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 10
add.i.v
call.i instance_create(argc=3)
pop.v.v self.bon
pushi.e -6
push.v self.bon
conv.v.i
pop.v.i [stacktop]self.hspeed
b [4]

:[3]
pushi.e 653
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 20
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 10
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.bon
pushi.e 6
push.v self.bon
conv.v.i
pop.v.i [stacktop]self.hspeed

:[4]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
b [end]

:[5]
pushi.e 2
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]