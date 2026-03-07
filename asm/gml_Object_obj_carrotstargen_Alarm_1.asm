.localvar 0 arguments

:[0]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.side
push.v self.side
push.v self.oldside
cmp.v.v EQ
bf [2]

:[1]
push.v self.side
pushi.e 1
add.i.v
pop.v.v self.side

:[2]
push.v self.side
pushi.e 3
cmp.i.v GTE
bf [4]

:[3]
pushi.e 0
pop.v.i self.side

:[4]
push.v self.side
pop.v.v self.oldside
pushi.e 700
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 276
push.v self.side
pushi.e 30
mul.i.v
add.v.i
call.i instance_create(argc=3)
pop.v.v self.cshot
push.v self.dmg
push.v self.cshot
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.shake
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
push.v self.cshot
conv.v.i
pop.v.i [stacktop]self.shake
pushi.e 2
push.v self.cshot
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm

:[6]
push.v self.rate
pushi.e 2
conv.i.d
div.d.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [end]

:[7]
pushi.e 700
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pushi.e 336
push.v self.side
pushi.e 30
mul.i.v
sub.v.i
call.i instance_create(argc=3)
pop.v.v self.cshot2
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
push.v self.rate
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[end]