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
push.s "obj_ficus_72"@12736
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [2]

:[1]
push.s "obj_ficus_75"@12738
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushbltn.v self.room
pushi.e 184
cmp.i.v EQ
bf [8]

:[3]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [5]

:[4]
push.v self.x
pushi.e 260
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.s "obj_ficus_81"@12740
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[8]
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