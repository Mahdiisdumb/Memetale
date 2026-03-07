.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 150
cmp.i.v LT
bf [3]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.02
add.d.v
pop.v.v self.image_alpha

:[3]
push.v self.timer
pushi.e 150
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1365
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.sepiaebott
pushi.e 2
push.v self.sepiaebott
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.sepiaebott
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.sepiaebott
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.sepiaebott
conv.v.i
pop.v.i [stacktop]self.image_index
push.v self.sprite_index
push.v self.sepiaebott
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v self.depth
pushi.e 10
add.i.v
push.v self.sepiaebott
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.sepiaebott
conv.v.i
pop.v.i [stacktop]self.visible

:[5]
push.v self.timer
pushi.e 150
cmp.i.v GTE
bf [7]

:[6]
push.v self.timer
pushi.e 250
cmp.i.v LTE
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.image_alpha
push.d 0.01
sub.d.v
pop.v.v self.image_alpha

:[10]
push.v self.timer
pushi.e 300
cmp.i.v GTE
bf [12]

:[11]
push.v self.timer
pushi.e 700
cmp.i.v LTE
b [13]

:[12]
push.e 0

:[13]
bf [16]

:[14]
push.v self.offer
pushi.e 1
add.i.v
pop.v.v self.offer
push.v self.offer
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.view_yview
pushi.e 1
add.i.v
pop.i.v [array]self.view_yview
pushi.e 0
pop.v.i self.offer

:[16]
push.v self.timer
pushi.e 560
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
pop.v.i self.n_active

:[18]
push.v self.n_index
pushi.e 1
add.i.v
pop.v.v self.n_index
push.v self.n_timer
pushi.e 140
cmp.i.v GTE
bf [20]

:[19]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 284
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushi.e 1
push.v self.n_alpha
sub.v.i
push.v self.s8
call.i caster_set_volume(argc=2)
popz.v
push.v self.n_alpha
push.v self.noise
call.i caster_set_volume(argc=2)
popz.v
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
pushi.e 355
conv.i.v
call.i audio_sound_gain(argc=3)
popz.v
push.v self.n_active
pushi.e 1
cmp.i.v EQ
bf [end]

:[21]
push.v self.n_timer
pushi.e 1
add.i.v
pop.v.v self.n_timer

:[end]