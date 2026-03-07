.localvar 0 arguments

:[0]
pushi.e 2
conv.i.v
push.v 744.y
pushi.e 2
add.i.v
push.v 744.x
pushi.e 2
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.d -0.05
pop.v.d self.friction
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.dmg
pushglb.v global.hp
pushi.e 7
cmp.i.v LT
bf [end]

:[1]
pushi.e 2
pop.v.i self.dmg

:[end]