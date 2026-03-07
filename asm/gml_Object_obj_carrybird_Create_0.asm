.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 270
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.carry
pushi.e 0
pop.v.i self.sinoid
pushi.e 0
pop.v.i self.clamp_r
pushi.e 0
pop.v.i self.right
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "music/birdsong.ogg"@2847
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.birdsong

:[2]
pushglb.v global.entrance
pushi.e 20
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.plot
pushi.e 115
cmp.i.v GT
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 100
pop.v.i self.x
pushi.e 1
pop.v.i self.right

:[7]
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bf [9]

:[8]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 900
pop.v.i self.y

:[end]