.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.moving
pushi.e 101
pop.v.i self.x1
pushi.e 60
pop.v.i self.y1
pushi.e 220
push.v self.sprite_width
sub.v.i
pushi.e 1
sub.i.v
pop.v.v self.x2
pushi.e 115
pop.v.i self.y2
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
push.s "music/coolbeat.ogg"@2824
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.beat
pushi.e 1
pop.v.i global.interact
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 0
pop.v.i 1576.visible

:[2]
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.mc
pushi.e 1139
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.i 500020
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.i self.canmove
pushi.e 0
pop.v.i self.playing
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.mclock
pushi.e 30
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.GR

:[end]