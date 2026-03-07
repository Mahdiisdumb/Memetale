.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[1]
push.v 1576.xprevious
push.v 1576.x
cmp.v.v LT
bt [4]

:[2]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bt [4]

:[3]
push.v 1575.right
conv.v.b
b [5]

:[4]
push.e 1

:[5]
bf [9]

:[6]
push.v 1576.x
push.v self.x
cmp.v.v GT
bf [8]

:[7]
pushi.e 1
conv.i.v
push.v self.mynoise
call.i caster_set_volume(argc=2)
popz.v

:[8]
b [10]

:[9]
pushi.e 0
conv.i.v
push.v self.mynoise
call.i caster_set_volume(argc=2)
popz.v

:[10]
pushi.e 6
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
b [12]

:[11]
pushi.e 0
conv.i.v
push.v self.mynoise
call.i caster_set_volume(argc=2)
popz.v

:[12]
pushi.e -5
pushi.e 47
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[end]