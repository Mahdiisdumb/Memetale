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
pushi.e -5
pushi.e 261
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_iceroom_fakedog_64"@14490
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_iceroom_fakedog_65"@14492
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 1
pushi.e -5
pushi.e 261
pop.v.i [array]global.flag
pushi.e 1615
pop.v.i self.sprite_index
b [3]

:[2]
push.s "obj_iceroom_fakedog_71"@14494
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]