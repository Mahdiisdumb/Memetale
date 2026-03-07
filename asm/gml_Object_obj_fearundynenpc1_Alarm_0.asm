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
push.s "* We're about to visit Snowdin&  for the first time./"@50443
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "* You just came from there^1,&  right?/"@50444
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "* How is it...?/%%"@50445
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
pushglb.v global.plot
pushi.e 105
cmp.i.v GT
bf [2]

:[1]
push.s "* You should go back to&  Snowdin./%%"@50446
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg

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