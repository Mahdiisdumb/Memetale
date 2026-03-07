.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 1402
pop.v.i self.dsprite
pushi.e 1414
pop.v.i self.usprite
pushi.e 1419
pop.v.i self.lsprite
pushi.e 1417
pop.v.i self.rsprite
pushi.e 1405
pop.v.i self.dtsprite
pushi.e 1416
pop.v.i self.utsprite
pushi.e 1423
pop.v.i self.ltsprite
pushi.e 1424
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.fun
pushi.e 2
pop.v.i self.spot
pushi.e 0
pop.v.i self.myscore
pushi.e 0
pop.v.i self.workout
pushi.e 0
pop.v.i self.intro
pushglb.v global.entrance
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 5
pop.v.i self.spot
pushi.e 26
pop.v.i self.x
push.v self.y
pushi.e 80
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.solid
pushi.e 6
pop.v.i self.vspeed
pushi.e 1402
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[4]
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 4
cmp.i.v GTE
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]