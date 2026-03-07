.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.i
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[2]
push.v self.rr
pushi.e 3
cmp.i.v NEQ
bf [4]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
dup.i 0
push.v [stacktop]self.sinex
pushi.e 5
add.i.v
pop.i.v [stacktop]self.sinex
b [5]

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
dup.i 0
push.v [stacktop]self.sinex
pushi.e 2
add.i.v
pop.i.v [stacktop]self.sinex

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
push.v [stacktop]self.sinex
pushi.e 100
conv.i.d
div.d.v
push.d 3.141592653589793
mul.d.v
call.i sin(argc=1)
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
sub.v.v
pushi.e 45
sub.i.v
mul.v.v
pushi.e 2
conv.i.d
div.d.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
add.v.v
pushi.e 67
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.blt
conv.v.i
pop.v.v [stacktop]self.x
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.v self.siner
pushi.e 20
cmp.i.v GT
bf [7]

:[6]
push.v self.vspeed
push.d 0.04
sub.d.v
pop.v.v self.vspeed

:[7]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [2]

:[8]
popz.i

:[end]