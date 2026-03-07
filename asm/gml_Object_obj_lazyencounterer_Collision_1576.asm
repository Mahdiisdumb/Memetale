.localvar 0 arguments

:[0]
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.battleno
pop.v.v global.battlegroup
pushi.e 0
pop.v.i global.border
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y
pushi.e 141
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.cl
pushi.e -5
pushi.e 408
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]