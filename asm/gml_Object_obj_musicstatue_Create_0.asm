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
pushi.e 0
pop.v.i self.image_speed
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mask
pushi.e 1679
push.v self.mask
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.mask
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1365
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shadow
pushi.e 1674
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.4
push.v self.shadow
conv.v.i
pop.v.d [stacktop]self.image_alpha
pushi.e 1000
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.shadow
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1365
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.light
pushi.e 1675
push.v self.light
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.light
conv.v.i
pop.v.d [stacktop]self.image_alpha
pushi.e 1000
push.v self.light
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.light
conv.v.i
pop.v.i [stacktop]self.visible
pushglb.v global.currentsong
call.i caster_get_volume(argc=1)
pop.v.v self.bgvol
push.d 0.25
pop.v.d self.boxvol
pushi.e 0
pop.v.i self.boxactive
pushi.e -5
pushi.e 86
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.boxactive
pushi.e 1
push.v self.mask
conv.v.i
pop.v.i [stacktop]self.image_index
push.s "music/musicbox.ogg"@2648
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.musicbox
pushi.e 1
pop.v.i self.image_index
push.d 0.9
conv.d.v
push.d 0.25
conv.d.v
push.v self.musicbox
call.i caster_loop(argc=3)
popz.v

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]