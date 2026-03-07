.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 565
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1028
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [2]

:[1]
pushi.e 1031
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [13]

:[4]
pushi.e 4
pop.v.i global.facechoice
pushi.e 19
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_papmailbox_74"@20160
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papmailbox_75"@20162
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.s "obj_papmailbox_78"@20164
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papmailbox_79"@20166
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[6]
pushi.e 1315
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[7]
pushi.e 0
pop.v.i self.h
pushi.e 56
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.h

:[9]
pushi.e 57
conv.i.v
call.i scr_itemcheck(argc=1)
popz.v
push.v self.haveit
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.h

:[11]
push.v self.h
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 5
pop.v.i global.facechoice
pushi.e 37
pop.v.i global.typer
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_papmailbox_96"@20168
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papmailbox_98"@20170
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_papmailbox_99"@20172
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_papmailbox_101"@20174
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
push.s "obj_papmailbox_102"@20176
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 6
pop.v.v [array]global.msg
push.s "obj_papmailbox_103"@20178
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 7
pop.v.v [array]global.msg
pushi.e 5
conv.i.v
pushi.e 8
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papmailbox_105"@20180
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 9
pop.v.v [array]global.msg
push.s "obj_papmailbox_106"@20182
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 10
pop.v.v [array]global.msg
pushi.e 9
conv.i.v
pushi.e 11
conv.i.v
call.i scr_undface(argc=2)
popz.v
push.s "obj_papmailbox_108"@20184
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 12
pop.v.v [array]global.msg

:[13]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]