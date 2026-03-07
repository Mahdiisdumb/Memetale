.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 50
cmp.i.v LT
bf [2]

:[1]
push.v self.t
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1390
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[5]
pushi.e 1390
pushenv [7]

:[6]
push.v self.steps
pushi.e 200
add.i.v
pop.v.v self.steps

:[7]
popenv [6]
pushi.e 0
pop.v.i global.encounter

:[8]
pushi.e 1
pop.v.i self.t
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i 1576.hspeed
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.vol
push.v self.vol
pop.v.v self.vol1

:[end]