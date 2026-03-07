.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 682
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushglb.v global.plot
pushi.e 184
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i global.msc
push.s "obj_laserswitch1_90"@15004
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]