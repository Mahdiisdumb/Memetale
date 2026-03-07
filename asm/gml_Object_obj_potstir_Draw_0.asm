.localvar 0 arguments

:[0]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 32
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 304
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 6
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 16
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 29
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 301
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_yview
pushi.e 9
add.i.v
pushi.e -1
pushbltn.v self.view_current
conv.v.i
push.v [array]self.view_xview
pushi.e 19
add.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
pushi.e 2
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "obj_potstir_64"@21670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 11
conv.i.v
pushi.e 30
conv.i.v
call.i scr_drawtext_icons(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i control_check_pressed(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.stir
pushi.e 1
add.i.v
pop.v.v self.stir
push.v self.pot
conv.v.i
dup.i 0
push.v [stacktop]self.image_index
pushi.e 1
add.i.v
pop.i.v [stacktop]self.image_index

:[2]
push.v self.stime
pushi.e 1
add.i.v
pop.v.v self.stime
push.v self.stime
pushi.e 90
cmp.i.v GT
bf [5]

:[3]
push.v self.stir
pushi.e 70
cmp.i.v LTE
bf [5]

:[4]
push.v self.sval
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_potstir_81"@21672
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side

:[8]
push.v self.stime
pushi.e 150
cmp.i.v GT
bf [11]

:[9]
push.v self.stir
pushi.e 70
cmp.i.v LTE
bf [11]

:[10]
push.v self.sval
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 2
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 2
pop.v.i global.faceemotion
push.s "obj_potstir_93"@21674
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side

:[14]
push.v self.stime
pushi.e 210
cmp.i.v GT
bf [17]

:[15]
push.v self.stir
pushi.e 70
cmp.i.v LTE
bf [17]

:[16]
push.v self.sval
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 3
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_potstir_106"@21676
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side

:[20]
push.v self.stime
pushi.e 300
cmp.i.v GT
bt [22]

:[21]
push.v self.stir
pushi.e 70
cmp.i.v GT
b [23]

:[22]
push.e 1

:[23]
bf [end]

:[24]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[25]
pushi.e 99
pop.v.i self.sval
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 6
pop.v.i global.faceemotion
push.s "obj_potstir_119"@21677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.gg
pushi.e 1
push.v self.gg
conv.v.i
pop.v.i [stacktop]self.side
pushi.e 210
pop.v.i 1065.con
call.i instance_destroy(argc=0)
popz.v

:[end]