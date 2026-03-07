.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.typeno
pushi.e 2
pop.v.i self.typeamt
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.type
pushi.e 7
pop.v.i self.flashtimer
pushi.e 0
pop.v.i self.on
pushi.e 0
pop.v.i self.con
pushi.e 3
pop.v.i self.diff
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 119
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.s "music/sfx_eyeflash.ogg"@2723
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.flash
pushi.e 0
pop.v.i 489.visible
pushi.e 0
pop.v.i 490.color
pushi.e 0
pop.v.i 490.armtest
pushi.e 0
pop.v.i 490.visible
push.v 489.x
pushi.e 50
sub.i.v
pop.v.v self.x
push.v 489.y
pop.v.v self.y

:[end]