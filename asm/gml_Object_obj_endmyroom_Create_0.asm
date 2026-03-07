.localvar 0 arguments

:[0]
pushi.e -30
pop.v.i self.timer
pushi.e 0
pop.v.i self.death
push.s "system_information_963"@3403
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.death

:[2]
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.doreground
pushi.e 2573
push.v self.doreground
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.doreground
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 500
push.v self.doreground
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 0
pop.v.i self.fix
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.s "music/end/dooropen.ogg"@2813
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.dooropen
push.s "music/end/crickets.ogg"@2811
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.crickets
push.s "music/end/doorclose.ogg"@2812
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.doorclose
push.d 0.9
conv.d.v
pushi.e 1
conv.i.v
push.v self.crickets
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i global.inbattle

:[end]