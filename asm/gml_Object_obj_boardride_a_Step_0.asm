.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1576
conv.i.v
push.v self.y
pushi.e 18
add.i.v
push.v self.x
pushi.e 24
add.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 16
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [6]

:[5]
call.i scr_tempsave(argc=0)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.phasing
pushi.e 3
pop.v.i self.hspeed
pushi.e 3
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_speed
push.d 0.006
conv.d.v
call.i scr_musfadeout(argc=1)
popz.v
push.s "music/ambientwater.ogg"@2645
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.9
conv.d.v
pushi.e 0
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.d 0.005
conv.d.v
call.i scr_musfadein(argc=1)
popz.v
pushi.e 2
pop.v.i self.active

:[6]
push.v self.active
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v self.x
pushi.e 1000
cmp.i.v GTE
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1000
pop.v.i self.x
pushi.e 0
pop.v.i self.hspeed
push.d 0.25
pop.v.d 1576.image_speed
pushi.e 8
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.active

:[11]
push.v self.active
pushi.e 4
cmp.i.v EQ
bf [end]

:[12]
pushi.e 0
pop.v.i 1576.hspeed
pushi.e 0
pop.v.i 1576.image_speed
pushi.e 0
pop.v.i global.interact
pushi.e 5
pop.v.i self.active
pushi.e -3
pop.v.i self.hspeed
pushi.e 0
pop.v.i global.phasing

:[end]