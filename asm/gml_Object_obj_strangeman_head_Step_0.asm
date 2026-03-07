.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.siner2
push.v self.siner2v
add.v.v
pop.v.v self.siner2
push.v self.x
push.v self.siner
push.v self.s
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner2
push.v self.s
div.v.v
call.i sin(argc=1)
push.v self.sf2
mul.v.v
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.hmem
pop.v.v self.hspeed
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.counter
pushi.e 30
cmp.i.v GT
bf [5]

:[1]
push.v 744.y
pushi.e 6
add.i.v
push.v self.y
cmp.v.v LT
bf [3]

:[2]
push.v self.vspeed
push.d 0.05
sub.d.v
pop.v.v self.vspeed

:[3]
push.v 744.y
pushi.e 6
add.i.v
push.v self.y
cmp.v.v GT
bf [5]

:[4]
push.v self.vspeed
push.d 0.05
add.d.v
pop.v.v self.vspeed

:[5]
push.v self.x
pushi.e -100
cmp.i.v LT
bf [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]