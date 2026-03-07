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
push.s "obj_latchkey_71"@15521
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
pop.v.v self.mydialoguer
pushbltn.v self.room
pushi.e 225
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -5
pushi.e 452
pop.v.i [array]global.flag

:[2]
pushbltn.v self.room
pushi.e 222
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1
pushi.e -5
pushi.e 453
pop.v.i [array]global.flag

:[end]