.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v self.room
pushi.e 26
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [7]

:[4]
pushi.e 4
pop.v.i global.interact
pushi.e 1
pop.v.i global.phasing
pushbltn.v self.room
pushi.e 24
cmp.i.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 51
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[6]
pushi.e 30
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 923
conv.i.v
push.v 1576.y
pushi.e 20
add.i.v
push.v 1576.x
call.i instance_create(argc=3)
popz.v
b [end]

:[7]
pushi.e 3
pop.v.i self.myinteract
pushbltn.v self.room
pushi.e 23
cmp.i.v EQ
bf [9]

:[8]
pushi.e 519
pop.v.i global.msc

:[9]
pushbltn.v self.room
pushi.e 25
cmp.i.v EQ
bf [11]

:[10]
pushi.e 521
pop.v.i global.msc

:[11]
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

:[end]