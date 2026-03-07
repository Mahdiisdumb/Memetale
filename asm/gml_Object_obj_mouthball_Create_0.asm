.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
push.v self.x
pop.v.v self.xprev3
push.v self.y
pop.v.v self.yprev3
push.v self.x
pop.v.v self.xprev2
push.v self.y
pop.v.v self.yprev2
push.v self.xprev3
pop.v.v self.xprev4
push.v self.yprev3
pop.v.v self.yprev4
pushi.e 5
pop.v.i self.num
push.d 0.8
pop.v.d self.size
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 6
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.bounces
pushi.e 0
pop.v.i self.pb
pushi.e 0
pop.v.i self.maxer
pushi.e 0
pop.v.i self.visible
push.v self.maxer
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.image_xscale
push.v self.maxer
push.v self.siner
pushi.e 6
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.1
mul.d.v
add.v.v
pop.v.v self.image_yscale
pushi.e 1664
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.dt
pushi.e 1639
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 1591
pushenv [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sfx_generate
call.i caster_play(argc=3)
popz.v

:[2]
popenv [1]
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
push.i 32768
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[end]