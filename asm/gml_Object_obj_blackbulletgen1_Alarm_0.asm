.localvar 0 arguments

:[0]
pushglb.v global.firingrate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 677
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.bx
pushi.e 8
push.v self.bx
conv.v.i
pop.v.i [stacktop]self.vspeed
pushglb.v global.hp
pushi.e 2
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v 677.dmg
pushglb.v global.hp
pushi.e 2
cmp.i.v LT
bf [end]

:[1]
pushi.e -1
pop.v.i global.turntimer
pushi.e 677
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]