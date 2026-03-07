.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
push.s "error/%%"@50423
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
pushi.e -5
pushi.e 92
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 593
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer

:[2]
pushi.e -5
pushi.e 92
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [8]

:[3]
pushi.e 595
pop.v.i global.msc
pushi.e -5
pushi.e 92
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 596
pop.v.i global.msc

:[5]
pushi.e -5
pushi.e 92
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
pushi.e 597
pop.v.i global.msc

:[7]
pushi.e 34
pop.v.i global.typer

:[8]
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "* test/%%"@50424
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
pushi.e -5
pushi.e 92
push.v [array]global.flag
pushi.e 4
cmp.i.v NEQ
bf [10]

:[9]
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
b [end]

:[10]
push.i 349382
pop.v.i self.bibblybeebly

:[end]