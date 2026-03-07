.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 21
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
push.s "obj_labelevator_b_122"@14854
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labelevator_b_123"@14856
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i self.con

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 79
pop.v.i global.typer
push.s "obj_labelevator_b_131"@14858
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_labelevator_b_132"@14860
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_labelevator_b_133"@14862
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_labelevator_b_134"@14864
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_labelevator_b_135"@14866
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_labelevator_b_136"@14868
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.rect
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.con
pushi.e 9
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e 21
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 6
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i global.facing
pushi.e 1570
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.la
push.v self.la
conv.v.i
pushenv [17]

:[16]
pushi.e 0
pop.v.i self.blacktime

:[17]
popenv [16]
pushi.e 8
pop.v.i self.con

:[18]
push.v self.rect
pushi.e 1
cmp.i.v EQ
bf [end]

:[19]
push.v self.rectaur
pushi.e 20
cmp.i.v LT
bf [21]

:[20]
push.v self.rectaur
pushi.e 2
add.i.v
pop.v.v self.rectaur

:[21]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 250
conv.i.v
pushi.e 140
push.v self.rectaur
add.v.i
pushi.e 180
conv.i.v
pushi.e 140
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 250
conv.i.v
pushi.e 180
push.v self.rectaur
sub.v.i
pushi.e 180
conv.i.v
pushi.e 180
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushbltn.v self.room
pushi.e 261
cmp.i.v EQ
bf [end]

:[22]
pushi.e 120
push.v self.rectaur
add.v.i
pushi.e 99
conv.i.v
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 160
push.v self.rectaur
sub.v.i
pushi.e 99
conv.i.v
pushi.e 160
conv.i.v
pushi.e 0
conv.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[end]