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
push.s "obj_heatsflamesman_75"@14324
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushbltn.v self.room
pushi.e 187
cmp.i.v EQ
bf [5]

:[1]
pushi.e 850
pop.v.i global.msc
pushi.e -5
pushi.e 434
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i global.msc
push.s "obj_heatsflamesman_85"@14326
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushi.e -5
pushi.e 434
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i global.msc
push.s "obj_heatsflamesman_90"@14328
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_heatsflamesman_97"@14330
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
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