.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1027
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e -5
pushi.e 82
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
pushi.e 1
pop.v.i self.conversation
push.s "obj_papsink_100"@20186
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papsink_101"@20188
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
b [4]

:[3]
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i scr_papface(argc=2)
popz.v
push.s "obj_papsink_106"@20190
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[4]
b [6]

:[5]
push.s "obj_papsink_111"@20192
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i self.conversation

:[6]
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