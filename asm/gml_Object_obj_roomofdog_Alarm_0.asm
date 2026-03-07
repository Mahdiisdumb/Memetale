.localvar 0 arguments

:[0]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i self.visible
pushi.e 8
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.type
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.type
pushi.e 7
cmp.i.v EQ
bf [2]

:[1]
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.x
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.y
pushi.e 1609
pop.v.i self.sprite_index
push.s "music/sigh_of_dog.ogg"@2822
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.thissong
push.d 0.8
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 1
conv.i.v
push.v self.thissong
call.i caster_loop(argc=3)
popz.v
push.d 0.05
pop.v.d self.image_speed
b [end]

:[2]
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.y
push.s "music/dance_of_dog.ogg"@2821
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.thissong
push.d 0.95
push.d 0.1
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 1
conv.i.v
push.v self.thissong
call.i caster_loop(argc=3)
popz.v
push.d 0.15
pop.v.d self.image_speed

:[end]