.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.stoptimer
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e -30
push.v self.siner
pushi.e 9
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 105
mul.i.v
call.i abs(argc=1)
add.v.i
pop.v.v self.x
push.v self.x
pushi.e 64
cmp.i.v GTE
bf [2]

:[1]
push.v self.siner
push.d 0.72
sub.d.v
pop.v.v self.siner

:[2]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.stoptimer

:[4]
push.v self.x
pushi.e -8
cmp.i.v LTE
bf [end]

:[5]
push.v self.terminate
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]