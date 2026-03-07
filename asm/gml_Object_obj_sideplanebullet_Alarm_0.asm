.localvar 0 arguments

:[0]
pushi.e 325
conv.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.g
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.dmg
push.v self.g
conv.v.i
pop.v.v [stacktop]self.dmg

:[2]
pushi.e 12
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [end]

:[3]
pushi.e 18
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]