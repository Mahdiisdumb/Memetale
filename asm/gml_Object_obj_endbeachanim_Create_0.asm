.localvar 0 arguments

:[0]
pushi.e 1365
conv.i.v
pushi.e 52
conv.i.v
pushi.e 44
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.alphys
push.d 0.2
push.v self.alphys
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2541
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.alphys
conv.v.i
pop.v.i [stacktop]self.visible
push.v self.depth
pushi.e 1
add.i.v
push.v self.alphys
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 2548
pop.v.i self.headsprite
pushi.e 0
pop.v.i self.head_index
pushi.e 0
pop.v.i self.headx
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e -120
pop.v.i self.timer
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.shuffle
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.crack
pushi.e 0
pop.v.i self.ctime
call.i scr_loadendsong(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]global.endsong
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i global.inbattle
pushi.e 2537
conv.i.v
pushi.e 175
conv.i.v
pushi.e 18
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.o
push.i 200000
push.v self.o
conv.v.i
pop.v.i [stacktop]self.depth
push.d 0.1
push.v self.o
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2536
conv.i.v
pushi.e 145
conv.i.v
pushi.e 113
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.r
push.i 200000
push.v self.r
conv.v.i
pop.v.i [stacktop]self.depth
push.d 0.25
push.v self.r
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2535
conv.i.v
pushi.e 131
conv.i.v
pushi.e 23
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.l
push.i 200000
push.v self.l
conv.v.i
pop.v.i [stacktop]self.depth
push.d 0.2
push.v self.l
conv.v.i
pop.v.d [stacktop]self.image_speed

:[end]