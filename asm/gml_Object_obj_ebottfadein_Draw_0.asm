.localvar 0 arguments
.localvar 1 texty 10598
.localvar 2 textyscale 10599

:[0]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.image_alpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 450
pop.v.i local.texty
pushi.e 10
pop.v.i local.textyscale
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e 480
pop.v.i local.texty
pushi.e 8
pop.v.i local.textyscale

:[2]
pushi.e 0
conv.i.v
pushloc.v local.textyscale
pushi.e 6
conv.i.v
push.s "credits_theend_fake"@31796
conv.s.v
call.i scr_gettext(argc=1)
pushloc.v local.texty
pushi.e 180
conv.i.v
call.i draw_text_transformed(argc=6)
popz.v
push.v self.n_timer
pushi.e 7
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.n_alpha

:[4]
push.v self.n_timer
pushi.e 8
cmp.i.v GTE
bf [6]

:[5]
push.v self.n_timer
pushi.e 16
cmp.i.v LTE
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
push.v self.n_alpha
push.d 0.25
add.d.v
pop.v.v self.n_alpha
push.v self.n_alpha
push.d 0.75
cmp.d.v GT
bf [10]

:[9]
push.d 0.75
pop.v.d self.n_alpha

:[10]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[11]
push.v self.n_timer
pushi.e 19
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.n_alpha

:[13]
push.v self.n_timer
pushi.e 24
cmp.i.v GTE
bf [15]

:[14]
push.v self.n_timer
pushi.e 30
cmp.i.v LTE
b [16]

:[15]
push.e 0

:[16]
bf [20]

:[17]
push.v self.n_alpha
push.d 0.25
add.d.v
pop.v.v self.n_alpha
push.v self.n_alpha
push.d 0.75
cmp.d.v GT
bf [19]

:[18]
push.d 0.75
pop.v.d self.n_alpha

:[19]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[20]
push.v self.n_timer
pushi.e 40
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.n_alpha

:[22]
push.v self.n_timer
pushi.e 60
cmp.i.v GTE
bf [end]

:[23]
push.v self.n_alpha
pushi.e 1
cmp.i.v LT
bf [25]

:[24]
push.v self.n_alpha
push.d 0.25
add.d.v
pop.v.v self.n_alpha

:[25]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]