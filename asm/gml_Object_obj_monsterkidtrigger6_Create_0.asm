.localvar 0 arguments

:[0]
push.i 99999
pop.v.i self.con
pushi.e 0
pop.v.i self.unbuffer
pushi.e 0
pop.v.i self.ganer
pushglb.v global.plot
pushi.e 112
cmp.i.v LT
bf [3]

:[1]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1117
conv.i.v
push.v 1576.y
push.v 1576.x
pushi.e 8
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
push.v self.mkid
conv.v.i
push.v [stacktop]self.dsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 2.1
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.follow
pushi.e 0
pop.v.i self.con

:[3]
pushglb.v global.plot
pushi.e 112
cmp.i.v EQ
bf [5]

:[4]
pushi.e 8
pop.v.i self.con
pushi.e 1485
conv.i.v
pushi.e 100
conv.i.v
pushi.e 320
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.prostrate
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 1488
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[5]
pushi.e 5
conv.i.v
pushi.e 60
conv.i.v
pushi.e 340
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ledgewall
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.side

:[7]
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [end]

:[8]
pushi.e 1
pop.v.i self.side
pushi.e 320
push.v self.ledgewall
conv.v.i
pop.v.i [stacktop]self.x

:[end]