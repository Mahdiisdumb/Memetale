.localvar 0 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.go
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [11]

:[4]
push.v self.y
push.v self.arb
cmp.v.v GT
bt [6]

:[5]
push.v self.y
push.v self.arb2
cmp.v.v LT
b [7]

:[6]
push.e 1

:[7]
bf [11]

:[8]
push.v self.yprevious
pop.v.v self.y
push.v self.vspeed
neg.v
pop.v.v self.vspeed
push.v self.rope
conv.v.i
pushenv [10]

:[9]
push.v self.yprevious
pop.v.v self.y
push.v self.vspeed
neg.v
pop.v.v self.vspeed

:[10]
popenv [9]

:[11]
push.v self.x
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 20
sub.i.v
cmp.v.v LT
bf [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]