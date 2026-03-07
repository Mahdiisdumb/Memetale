.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_sans_prefinaldate_127"@23665
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 413
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 760
pop.v.i global.msc

:[2]
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