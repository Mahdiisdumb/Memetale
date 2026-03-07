.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.legx
pushi.e 0
pop.v.i self.legrot_r
pushi.e 0
pop.v.i self.legrot_l
pushi.e 0
pop.v.i self.bodyy
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.army
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.leg
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.active
pushi.e -70
pop.v.i self.main_timer
pushi.e 1365
conv.i.v
pushi.e 35
conv.i.v
pushi.e 210
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.bpants
pushi.e 2566
push.v self.bpants
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.bpants
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.bpants
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1010
push.v self.bpants
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1365
conv.i.v
pushi.e 60
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dtable
pushi.e 2565
push.v self.dtable
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.dtable
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.dtable
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1010
push.v self.dtable
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1365
conv.i.v
pushi.e 30
conv.i.v
pushi.e 98
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.napsta
pushi.e 1217
push.v self.napsta
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.napsta
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.napsta
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1011
push.v self.napsta
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1365
conv.i.v
pushi.e 20
conv.i.v
pushi.e 70
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.shyren
pushi.e 2564
push.v self.shyren
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.shyren
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.shyren
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1021
push.v self.shyren
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 5
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
call.i scr_loadendsong(argc=0)
popz.v
pushi.e -5
pushi.e 3
push.v [array]global.endsong
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 5
push.v [array]global.endsong
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i global.inbattle

:[end]