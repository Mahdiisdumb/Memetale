.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 27
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.s "obj_mettnews_artifact_117"@17717
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.type
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.type
pushi.e 7
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
pushi.e 716
push.v self.type
pushi.e 4
mul.i.v
add.v.i
pop.v.v self.basic
push.v self.talkedto
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.basic
pushi.e 2
add.i.v
pop.v.v self.basic

:[6]
push.v self.basic
pop.v.v global.msc

:[7]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 0
push.v self.mydialoguer
conv.v.i
pop.v.i [stacktop]self.side
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]