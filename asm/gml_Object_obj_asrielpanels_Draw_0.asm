.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.on
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 56
conv.i.v
pushi.e 120
conv.i.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[3]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.v self.image_alpha
push.d 0.06
add.d.v
pop.v.v self.image_alpha

:[8]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.v self.image_index
pushi.e 4
cmp.i.v LT
bf [14]

:[13]
push.v self.image_alpha
push.d 0.06
sub.d.v
pop.v.v self.image_alpha
b [15]

:[14]
pushi.e 2
pop.v.i self.on
pushi.e 250
pop.v.i self.memtimer
pushi.e 0
pop.v.i self.wht

:[15]
push.v self.memtimer
pushi.e 1
add.i.v
pop.v.v self.memtimer
push.v self.memtimer
pushi.e 120
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.on

:[17]
push.v self.memtimer
pushi.e 138
cmp.i.v EQ
bf [19]

:[18]
push.v self.image_index
pushi.e 1
add.i.v
pop.v.v self.image_index

:[19]
push.v self.memtimer
pushi.e 141
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.memtimer

:[21]
push.v self.on
pushi.e 2
cmp.i.v EQ
bf [24]

:[22]
push.v self.wht
push.d 0.02
add.d.v
pop.v.v self.wht
push.v self.wht
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.wht
push.d 1.18
cmp.d.v GT
bf [24]

:[23]
pushi.e 3
pop.v.i self.on
pushi.e 256
pop.v.i global.battlegroup
pushi.e 3
pushi.e -5
pushi.e 501
pop.v.i [array]global.flag
pushi.e 1
pop.v.i self.do_room_goto

:[24]
push.v self.on
pushi.e 3
cmp.i.v EQ
bf [27]

:[25]
push.v self.wht
push.d 0.05
sub.d.v
pop.v.v self.wht
push.v self.wht
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.wht
pushi.e 0
cmp.i.v LT
bf [27]

:[26]
pushi.e 4
pop.v.i self.on

:[27]
push.v self.xtimer
pushi.e 1
add.i.v
pop.v.v self.xtimer
pushi.e 0
pop.v.i self.qual
push.v self.xtimer
pushi.e 2263
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i self.qual

:[29]
pushglb.v global.batmusic
call.i caster_is_playing(argc=1)
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushglb.v global.batmusic2
call.i caster_is_playing(argc=1)
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i self.qual

:[34]
push.v self.qual
pushi.e 1
cmp.i.v EQ
bf [end]

:[35]
pushi.e 2266
pop.v.i self.xtimer
push.d 0.85
conv.d.v
push.v self.thisvol
pushglb.v global.batmusic2
call.i caster_loop(argc=3)
popz.v

:[end]