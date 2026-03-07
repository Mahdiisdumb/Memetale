.localvar 0 arguments

:[0]
pushi.e 1
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
push.v self.cl
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 65
conv.i.v
pushi.e 64
conv.i.v
call.i choose(argc=2)
pop.v.v self.battleno
pushi.e -5
pushi.e 423
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 64
pop.v.i self.battleno

:[3]
pushi.e -5
pushi.e 423
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 65
pop.v.i self.battleno

:[5]
pushi.e -5
pushi.e 423
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 68
pop.v.i self.battleno

:[7]
pushi.e -5
pushi.e 419
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.battleno
pushi.e 68
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 61
pop.v.i self.battleno

:[12]
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
pushi.e 423
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]