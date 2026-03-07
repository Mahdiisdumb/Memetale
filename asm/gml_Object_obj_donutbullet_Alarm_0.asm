.localvar 0 arguments

:[0]
pushi.e 364
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[1]
pushi.e 364
pop.v.i self.op
push.v self.op
conv.v.i
push.v [stacktop]self.type
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.op
conv.v.i
push.v [stacktop]self.yzero
push.v self.choice
pushi.e 1
sub.i.v
push.v self.op
conv.v.i
push.v [stacktop]self.yspace
mul.v.v
add.v.v
pop.v.v self.y

:[3]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.op
conv.v.i
push.v [stacktop]self.xmid
push.v self.op
conv.v.i
push.v [stacktop]self.xlen
pushi.e 2
mul.i.v
sub.v.v
pop.v.v self.x
push.v self.speedfactor
pop.v.v self.hspeed

:[5]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.op
conv.v.i
push.v [stacktop]self.xmid
push.v self.op
conv.v.i
push.v [stacktop]self.xlen
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.x
push.v self.speedfactor
neg.v
pop.v.v self.hspeed

:[7]
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.hspeed
call.i abs(argc=1)
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.vspeed

:[9]
push.v self.choice
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.v self.hspeed
call.i abs(argc=1)
neg.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.vspeed

:[11]
b [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
pushi.e 1
pop.v.i self.visible

:[end]