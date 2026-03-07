.localvar 0 arguments

:[0]
push.v self.shake
pushi.e 38
cmp.i.v GT
bf [2]

:[1]
pushi.e 2
pop.v.i self.speed
push.v self.direction
pushi.e 20
add.i.v
pop.v.v self.direction
b [4]

:[2]
push.v self.shake
pushi.e 42
cmp.i.v EQ
bf [4]

:[3]
pushi.e 4
pop.v.i self.speed
push.v self.direction
pushi.e 19
sub.i.v
pop.v.v self.direction

:[4]
push.v self.halt
pushi.e 3
cmp.i.v EQ
bt [6]

:[5]
push.v self.dfy
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]