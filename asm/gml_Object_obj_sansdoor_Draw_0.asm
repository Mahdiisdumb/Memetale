.localvar 0 arguments

:[0]
push.v 1418.bgalpha
pop.v.v self.bgalpha
push.v self.bgalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.bgalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 48
add.i.v
push.v self.x
pushi.e 3
add.i.v
push.v self.anim
pushi.e 1724
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.anim
push.d 0.25
add.d.v
pop.v.v self.anim
push.v self.sans
pushi.e 0
cmp.i.v GT
bf [end]

:[3]
push.v self.sans
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v self.sansamt
pushi.e 33
cmp.i.v LT
bf [6]

:[5]
push.v self.sansamt
pushi.e 2
add.i.v
pop.v.v self.sansamt
b [7]

:[6]
pushi.e 2
pop.v.i self.sans

:[7]
push.v self.sans
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 50
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i self.sans
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.wawa
call.i caster_play(argc=3)
popz.v

:[9]
push.v self.sans
pushi.e 4
cmp.i.v EQ
bf [13]

:[10]
push.v self.sansamt
pushi.e 4
cmp.i.v GT
bf [12]

:[11]
push.v self.sansamt
pushi.e 4
sub.i.v
pop.v.v self.sansamt
b [13]

:[12]
pushi.e 0
pop.v.i self.sansamt
pushi.e 0
pop.v.i self.sans

:[13]
push.v self.sans
pushi.e 3
cmp.i.v NEQ
bf [15]

:[14]
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 33
add.i.v
pushi.e 32
conv.i.v
push.v self.sansamt
pushi.e 0
conv.i.v
pushi.e 36
push.v self.sansamt
sub.v.i
pushi.e 0
conv.i.v
pushi.e 1442
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
b [end]

:[15]
push.v self.y
pushi.e 13
add.i.v
push.v self.x
pushi.e 33
add.i.v
pushi.e 32
conv.i.v
push.v self.sansamt
pushi.e 0
conv.i.v
pushi.e 36
push.v self.sansamt
sub.v.i
push.v self.anim
push.d 1.5
div.d.v
pushi.e 1442
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[end]