.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pushi.e 160
sub.i.v
pop.v.v self.x
pushi.e -9
pushi.e 8
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.hspeed
pushi.e 4
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.x
pushi.e 160
add.i.v
pop.v.v self.x
pushi.e 9
pushi.e 8
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.hspeed
pushi.e 4
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.vspeed

:[4]
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 18
cmp.i.v LT
bf [end]

:[6]
push.v self.x
push.v self.trail
conv.v.i
push.v self.i
conv.v.i
pop.v.v [array]self.xprev
push.v self.y
push.v self.trail
conv.v.i
push.v self.i
conv.v.i
pop.v.v [array]self.yprev
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [5]

:[end]