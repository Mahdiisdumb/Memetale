.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [17]

:[1]
push.v self.counter
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.v self.counter
pushi.e 14
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e -6
pop.v.i self.vspeed

:[6]
push.v self.counter
pushi.e 14
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i self.vspeed

:[8]
push.v self.counter
pushi.e 20
cmp.i.v GT
bf [10]

:[9]
push.v self.counter
pushi.e 30
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 8
pop.v.i self.vspeed

:[13]
push.v self.counter
pushi.e 30
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.vspeed

:[15]
push.v self.counter
pushi.e 40
cmp.i.v GT
bf [17]

:[16]
pushi.e 1
pop.v.i self.counter

:[17]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [21]

:[18]
pushi.e 0
pop.v.i self.vspeed
push.v self.speed
pushi.e 0
cmp.i.v GT
bf [20]

:[19]
push.v self.speed
push.d 0.2
sub.d.v
pop.v.v self.speed
b [21]

:[20]
pushi.e 0
pop.v.i self.speed

:[21]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.x
pushi.e -100
cmp.i.v LT
bf [end]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[end]