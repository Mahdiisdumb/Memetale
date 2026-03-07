.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.image_speed
pushi.e 6
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.i
pop.v.v self.ang
pushi.e 2
pop.v.i self.size
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.form
pushi.e 0
pop.v.i self.crit
push.s "music/sfx_frypan.ogg"@2726
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.pansfx
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.pansfx
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
pushi.e 731
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
push.v self.i
pushi.e 360
mul.i.v
pushi.e 8
conv.i.d
div.d.v
push.v self.g
conv.v.i
pop.v.v [stacktop]self.direction
push.v self.image_blend
push.v self.g
conv.v.i
pop.v.v [stacktop]self.image_blend
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 70
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]