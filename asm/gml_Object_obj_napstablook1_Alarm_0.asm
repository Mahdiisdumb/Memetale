.localvar 0 arguments

:[0]
pushglb.v global.plot
push.d 10.2
cmp.d.v LT
bf [end]

:[1]
pushi.e 3
pop.v.i self.myinteract
pushi.e 510
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i self.talkedto
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]