.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
push.v self.havewater
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 625
pop.v.i global.msc
b [3]

:[2]
pushi.e 627
pop.v.i global.msc

:[3]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "* (Someone has meticulously&  cleaned all the slime off of&  this snail.)/%%"@25742
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
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