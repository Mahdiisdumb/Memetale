.localvar 0 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushi.e 2
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.noise
call.i caster_play(argc=3)
popz.v

:[3]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [8]

:[4]
push.v self.photo_alpha
pushi.e 1
cmp.i.v LTE
bf [6]

:[5]
push.v self.photo_alpha
push.d 0.04
add.d.v
pop.v.v self.photo_alpha

:[6]
push.v self.photo_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 50
conv.i.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2576
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.death
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.photo_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 50
conv.i.v
pushi.e 140
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2577
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[8]
push.v self.timer
pushi.e 120
cmp.i.v GTE
bf [15]

:[9]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.v self.death
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[11]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
push.s "the_end"@32910
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 260
conv.i.v
pushi.e 205
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[13]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 5
conv.i.v
push.s "the_end"@32910
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 300
conv.i.v
pushi.e 205
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[15]
push.v self.timer
pushi.e 200
cmp.i.v GTE
bf [17]

:[16]
push.v self.dogamt
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [23]

:[19]
pushi.e 1
pop.v.i self.dogamt
push.v self.death
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.d 0.9
conv.d.v
push.d 0.9
conv.d.v
push.v self.song
call.i caster_loop(argc=3)
popz.v

:[21]
push.v self.death
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.d 0.2
conv.d.v
pushi.e 1
conv.i.v
pushi.e 218
conv.i.v
call.i caster_loop(argc=3)
popz.v

:[23]
push.v self.timer
pushi.e 220
cmp.i.v GTE
bf [25]

:[24]
push.v self.death
pushi.e 1
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 210
pop.v.i self.timer

:[28]
push.v self.timer
pushi.e 1320
cmp.i.v GTE
bf [30]

:[29]
push.v self.dogamt
pushi.e 2
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [35]

:[32]
pushi.e 2
pop.v.i self.dogamt
pushi.e 1365
conv.i.v
pushi.e 380
conv.i.v
pushi.e 640
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dog
pushi.e -4
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.depth
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 420
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.y

:[34]
push.d 0.2
push.v self.dog
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1611
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e -1
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 2
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.image_yscale

:[35]
push.v self.timer
pushi.e 1668
cmp.i.v GTE
bf [37]

:[36]
push.v self.dogamt
pushi.e 3
cmp.i.v LT
b [38]

:[37]
push.e 0

:[38]
bf [40]

:[39]
pushi.e 3
pop.v.i self.dogamt
pushi.e 0
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1614
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.05
push.v self.dog
conv.v.i
pop.v.d [stacktop]self.image_speed

:[40]
push.v self.timer
pushi.e 3686
cmp.i.v GTE
bf [42]

:[41]
push.v self.dogamt
pushi.e 4
cmp.i.v LT
b [43]

:[42]
push.e 0

:[43]
bf [end]

:[44]
pushi.e 4
pop.v.i self.dogamt
pushi.e 102
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.dog
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 8
add.i.v
pop.i.v [stacktop]self.y

:[end]