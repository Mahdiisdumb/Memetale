.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 589
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.object_index
conv.v.i
dup.i 0
push.v [stacktop]self.talkedto
pushi.e 1
add.i.v
pop.i.v [stacktop]self.talkedto

:[end]