.localvar 0 arguments

:[0]
pushi.e 373
conv.i.v
push.v self.y
pushi.e 14
add.i.v
push.v self.x
pushi.e 14
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
call.i scr_monstersum(argc=0)
pop.v.v self.sum
push.v self.sum
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
pushi.e 3
conv.i.v
call.i choose(argc=1)
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[end]