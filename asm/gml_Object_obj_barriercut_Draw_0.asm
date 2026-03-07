.localvar 0 arguments

:[0]
push.v self.shaker
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.shkx
push.v self.shaker
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pop.v.v self.shky
push.v self.shaker
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.shaker
pushi.e 1
sub.i.v
pop.v.v self.shaker

:[2]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.b_al
call.i draw_set_alpha(argc=1)
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
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.shky
add.v.v
push.v self.bx
neg.v
push.v self.shkx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2514
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.shky
add.v.v
push.v self.bx
push.v self.shkx
add.v.v
pushi.e 1
conv.i.v
pushi.e 2514
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [4]

:[3]
push.d 0.95
conv.d.v
push.d 0.8
conv.d.v
push.v self.sfx2
call.i caster_play(argc=3)
popz.v

:[4]
push.v self.timer
pushi.e 60
cmp.i.v GTE
bf [6]

:[5]
push.v self.bx
push.v self.bxspeed
add.v.v
pop.v.v self.bx
push.v self.bxspeed
pushi.e 2
add.i.v
pop.v.v self.bxspeed

:[6]
push.v self.timer
pushi.e 110
cmp.i.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.i global.msc
pushi.e 21
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_barriercut_94"@10668
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 784
conv.i.v
pushi.e 50
conv.i.v
pushi.e 50
conv.i.v
call.i instance_create(argc=3)
popz.v

:[8]
push.v self.timer
pushi.e 310
cmp.i.v EQ
bf [11]

:[9]
pushi.e 1690
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[10]
pushi.e 0
pop.v.i 1690.powered
pushi.e 20
pop.v.i 1690.con

:[11]
push.v self.timer
pushi.e 310
cmp.i.v GTE
bf [13]

:[12]
push.v self.b_al
push.d 0.02
sub.d.v
pop.v.v self.b_al

:[13]
push.v self.timer
pushi.e 370
cmp.i.v GTE
bf [end]

:[14]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]