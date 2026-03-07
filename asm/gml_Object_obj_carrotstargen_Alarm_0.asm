.localvar 0 arguments

:[0]
pushi.e 699
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 305
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cshot
push.v self.cshot
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.dmg
push.v self.cshot
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
push.v self.cshot
conv.v.i
pop.v.i [stacktop]self.shake
pushi.e 2
push.v self.cshot
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm

:[3]
push.v self.rate
pushi.e 3
conv.i.d
div.d.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
pushi.e 699
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 305
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.cshot2
push.v self.cshot2
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
push.v self.cshot
conv.v.i
push.v [stacktop]self.gravity
neg.v
push.v self.cshot2
conv.v.i
pop.v.v [stacktop]self.gravity
push.v self.cshot
conv.v.i
push.v [stacktop]self.hspeed
neg.v
push.v self.cshot2
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v self.dmg
push.v self.cshot2
conv.v.i
pop.v.v [stacktop]self.dmg

:[6]
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]