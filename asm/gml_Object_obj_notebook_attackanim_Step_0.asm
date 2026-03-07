.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.timer
pushi.e 15
cmp.i.v LT
bf [2]

:[1]
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
pop.v.v self.image_xscale

:[2]
push.v self.timer
pushi.e 15
cmp.i.v EQ
bf [6]

:[3]
pushi.e 46
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.crit
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 118
conv.i.v
call.i snd_play(argc=1)
popz.v

:[5]
pushi.e 1
pop.v.i self.image_speed
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
pushi.e 774
pop.v.i self.sprite_index

:[6]
push.v self.timer
pushi.e 15
cmp.i.v GT
bf [end]

:[7]
push.v self.image_xscale
push.d 0.5
add.d.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.d 0.5
add.d.v
pop.v.v self.image_yscale
push.v self.image_xscale
pushi.e 2
cmp.i.v GT
bf [9]

:[8]
push.v self.image_alpha
push.d 0.2
sub.d.v
pop.v.v self.image_alpha

:[9]
push.v self.image_alpha
push.d 0.1
cmp.d.v LT
bf [end]

:[10]
push.v self.bookspin
call.i caster_free(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]