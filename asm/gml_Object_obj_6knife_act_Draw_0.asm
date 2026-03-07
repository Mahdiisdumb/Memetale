.localvar 0 arguments

:[0]
push.v self.image_alpha
push.i 16777215
conv.i.v
push.v self.image_angle
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
push.v self.con
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e 3
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 204
conv.i.v
pushi.e 534
conv.i.v
pushi.e 146
conv.i.v
pushi.e 106
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 200
conv.i.v
pushi.e 530
conv.i.v
pushi.e 150
conv.i.v
pushi.e 110
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
pushi.e 113
pop.v.i global.typer
push.s "obj_6knife_act_284"@8803
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_6knife_act_285"@8804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1604
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 1604
conv.i.v
pushi.e 140
conv.i.v
pushi.e 110
conv.i.v
call.i instance_create(argc=3)
popz.v

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [12]

:[7]
pushi.e 1
pop.v.i self.type
pushi.e 1631
pushenv [9]

:[8]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[9]
popenv [8]
pushi.e 1591
pushenv [11]

:[10]
pushi.e 1
pop.v.i self.pd

:[11]
popenv [10]
push.d 2.1
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [15]

:[13]
pushglb.v global.soul_rescue
pushi.e 1
cmp.i.v NEQ
bf [15]

:[14]
pushi.e 1
pop.v.i global.soul_rescue
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 2
conv.i.v
push.s "P"@49979
conv.s.v
push.s "FFFFF"@47763
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ossafe_ini_close(argc=0)
popz.v
call.i ossafe_savedata_save(argc=0)
popz.v

:[15]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [end]

:[16]
pushi.e 1604
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
pushi.e 155
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1608
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1591
pushenv [20]

:[19]
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
push.v self.mus_saved
call.i caster_play(argc=3)
popz.v

:[20]
popenv [19]
pushi.e 1590
pushenv [22]

:[21]
push.v self.soulmax
pushi.e 150
sub.i.v
pop.v.v self.soultimer

:[22]
popenv [21]
pushi.e 1631
pushenv [24]

:[23]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[24]
popenv [23]
pushi.e 3
pop.v.i self.con

:[end]