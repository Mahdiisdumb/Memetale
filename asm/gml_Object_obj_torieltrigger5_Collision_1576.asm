.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 863
conv.i.v
pushi.e 240
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.toriel
pushi.e 0
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
push.s "obj_torieltrigger5_260"@27614
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
popz.v
pushi.e 1
pop.v.i self.conversation
pushi.e 1
pop.v.i self.fademusicout
pushi.e 1
pop.v.i global.interact

:[end]