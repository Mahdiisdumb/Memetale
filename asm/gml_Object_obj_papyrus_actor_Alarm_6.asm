.localvar 0 arguments

:[0]
push.v self.pd
pushi.e 1
add.i.v
pop.v.v self.pd
push.v self.y
pushi.e 2
push.v self.pd
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
mul.v.i
add.v.v
pop.v.v self.y
push.v self.x
pushi.e 2
push.v self.pd
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
mul.v.i
add.v.v
pop.v.v self.x
push.v self.up
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.grandv
push.d 0.13
add.d.v
pop.v.v self.grandv
b [3]

:[2]
push.v self.grandv
push.d 0.13
sub.d.v
pop.v.v self.grandv

:[3]
push.v self.grandv
pushi.e 3
cmp.i.v GT
bf [5]

:[4]
pushi.e 0
pop.v.i self.up

:[5]
push.v self.y
push.v self.grandv
sub.v.v
pop.v.v self.y
pushi.e 1
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[end]