.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e -170
pushi.e 170
push.v self.i
mul.v.i
add.v.i
push.v self.booky
add.v.v
pushi.e 100
conv.i.v
push.v self.image_index
pushi.e 2329
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e -2
conv.i.v
pushi.e -2
conv.i.v
pushi.e 170
push.v self.i
mul.v.i
push.v self.booky2
add.v.v
pushi.e 540
conv.i.v
push.v self.image_index
pushi.e 2329
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.booky
pushi.e 4
add.i.v
pop.v.v self.booky
push.v self.booky2
pushi.e 4
sub.i.v
pop.v.v self.booky2
push.v self.booky
pushi.e 170
cmp.i.v GT
bf [5]

:[4]
push.v self.booky
pushi.e 170
sub.i.v
pop.v.v self.booky

:[5]
push.v self.booky2
pushi.e -170
cmp.i.v LT
bf [7]

:[6]
push.v self.booky2
pushi.e 170
add.i.v
pop.v.v self.booky2

:[7]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.con
pushi.e 3
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [13]

:[11]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 230
conv.i.v
pushi.e 140
conv.i.v
pushi.e 4
conv.i.v
pushi.e 4
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 226
conv.i.v
pushi.e 136
conv.i.v
pushi.e 8
conv.i.v
pushi.e 8
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
push.s "obj_6book_master_384"@8734
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_6book_master_385"@8735
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
bf [13]

:[12]
pushi.e 1604
conv.i.v
pushi.e 4
conv.i.v
pushi.e 14
conv.i.v
call.i instance_create(argc=3)
popz.v

:[13]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [19]

:[14]
pushi.e 1591
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.pd

:[16]
popenv [15]
pushi.e 1
pop.v.i self.type
pushi.e 1628
pushenv [18]

:[17]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[18]
popenv [17]
push.d 2.1
pop.v.d self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [22]

:[20]
pushglb.v global.soul_rescue
pushi.e 4
cmp.i.v NEQ
bf [22]

:[21]
pushi.e 4
pop.v.i global.soul_rescue
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 5
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

:[22]
push.v self.con
push.d 3.1
cmp.d.v EQ
bf [32]

:[23]
pushi.e 1604
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
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
pushenv [27]

:[26]
push.d 0.9
conv.d.v
push.d 0.8
conv.d.v
push.v self.mus_saved
call.i caster_play(argc=3)
popz.v

:[27]
popenv [26]
pushi.e 1590
pushenv [29]

:[28]
push.v self.soulmax
pushi.e 150
sub.i.v
pop.v.v self.soultimer

:[29]
popenv [28]
pushi.e 1628
pushenv [31]

:[30]
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v

:[31]
popenv [30]
pushi.e 3
pop.v.i self.con

:[32]
push.v 1587.x
pushi.e 245
cmp.i.v LT
bf [34]

:[33]
pushi.e 245
pop.v.i 1587.x

:[34]
push.v 1587.x
pushi.e 382
cmp.i.v GT
bf [36]

:[35]
pushi.e 382
pop.v.i 1587.x

:[36]
push.v 1587.y
pushi.e 138
cmp.i.v LT
bf [end]

:[37]
pushi.e 138
pop.v.i 1587.y

:[end]