.localvar 0 arguments

:[0]
push.v self.y
push.v 762.y
cmp.v.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.green
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.kid
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[4]
push.v self.x
pushi.e 18
sub.i.v
push.v self.kid
conv.v.i
pop.v.v [stacktop]self.x
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [6]

:[5]
push.v self.x
pushi.e 28
sub.i.v
push.v self.kid
conv.v.i
pop.v.v [stacktop]self.x

:[6]
push.v self.y
pushi.e 8
sub.i.v
push.v self.kid
conv.v.i
pop.v.v [stacktop]self.y

:[end]