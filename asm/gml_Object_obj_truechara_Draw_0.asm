.localvar 0 arguments

:[0]
push.v self.flashred
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.redsiner
pushi.e 1
add.i.v
pop.v.v self.redsiner
push.v self.redsiner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 999
conv.i.v
pushi.e 999
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[2]
pushi.e 1
conv.i.v
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
push.v self.choicer
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.buffer
pushi.e 1
add.i.v
pop.v.v self.buffer
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 357
conv.i.v
pushi.e 75
conv.i.v
pushi.e 0
conv.i.v
pushi.e 46
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[5]
push.s "obj_truechara_erase"@31724
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 350
conv.i.v
pushi.e 100
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 357
conv.i.v
pushi.e 455
conv.i.v
pushi.e 0
conv.i.v
pushi.e 46
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[7]
push.s "obj_truechara_donot"@31726
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 350
conv.i.v
pushi.e 480
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 39
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [10]

:[8]
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.choice
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[10]
pushi.e 37
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [13]

:[11]
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.choice
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v

:[13]
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [15]

:[14]
push.v self.buffer
pushi.e 12
cmp.i.v GTE
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushi.e 112
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.choicer
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
push.v self.choice
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 19
pop.v.i self.con

:[19]
push.v self.choice
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 29
pop.v.i self.con

:[21]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]