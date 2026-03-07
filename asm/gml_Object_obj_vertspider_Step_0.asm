.localvar 0 arguments

:[0]
push.v self.fakeyoff
push.v self.op
conv.v.i
push.v [stacktop]self.yadd
add.v.v
pop.v.v self.fakeyoff
push.v self.fakeyoff
push.v self.op
conv.v.i
push.v [stacktop]self.yspace
cmp.v.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.fakeyoff
push.v self.fakeyamt
pushi.e 1
add.i.v
pop.v.v self.fakeyamt

:[2]
push.v self.fakey
push.v self.fakeyoff
add.v.v
push.v self.fakeyamt
push.v self.op
conv.v.i
push.v [stacktop]self.yspace
mul.v.v
add.v.v
pop.v.v self.y
push.v self.y
pushi.e 400
cmp.i.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.x
push.v 761.x
pushi.e 6
sub.i.v
cmp.v.v GT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[9]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
push.v self.x
push.v 759.x
pushi.e 6
add.i.v
cmp.v.v LT
b [12]

:[11]
push.e 0

:[12]
bf [end]

:[13]
push.v self.x
push.v self.hspeed
sub.v.v
pop.v.v self.x
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[end]