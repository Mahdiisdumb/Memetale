.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 207
pop.v.i global.msc
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 208
pop.v.i global.msc

:[2]
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 2
pop.v.i global.faceemotion
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