.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2530
pop.v.i self.rsprite
pushi.e 2533
pop.v.i self.lsprite
pushi.e 2526
pop.v.i self.dsprite
pushi.e 2528
pop.v.i self.usprite
pushi.e 2525
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 200
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.powered
pushi.e 0
pop.v.i self.emerge
pushi.e 1531
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1576
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mc_real
pushi.e 0
push.v self.mc_real
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.mc_real
conv.v.i
pop.v.i [stacktop]self.cutscene
pushi.e 1132
conv.i.v
push.v self.y
pushi.e 60
add.i.v
push.v self.x
call.i scr_marker(argc=3)
pop.v.v self.mc
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.depth
pushi.e 3
add.i.v
push.v self.mc
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
push.v self.ystart
pop.v.v self.thisy
push.s "music/musicbox.ogg"@2648
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.musicbox
push.s "music/xpart_back.ogg"@2781
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.xpart

:[end]