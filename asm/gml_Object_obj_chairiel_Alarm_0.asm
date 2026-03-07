.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
push.v self.chair
pushi.e 0
cmp.i.v EQ
bf [12]

:[1]
pushi.e 527
pop.v.i global.msc
pushi.e -5
pushi.e 103
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e 528
pop.v.i global.msc

:[3]
pushglb.v global.plot
push.d 19.1
cmp.d.v EQ
bf [5]

:[4]
pushi.e 528
pop.v.i global.msc

:[5]
pushglb.v global.plot
push.d 19.2
cmp.d.v EQ
bf [7]

:[6]
pushi.e 529
pop.v.i global.msc

:[7]
pushglb.v global.plot
push.d 19.3
cmp.d.v EQ
bf [9]

:[8]
pushi.e 530
pop.v.i global.msc

:[9]
pushglb.v global.plot
push.d 19.4
cmp.d.v EQ
bf [11]

:[10]
pushi.e 531
pop.v.i global.msc

:[11]
pushi.e -1
pop.v.i global.choice
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 99
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
b [end]

:[12]
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
push.v self.chair
pushi.e 9
cmp.i.v NEQ
bf [14]

:[13]
push.s "obj_chairiel_118"@10887
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
pop.v.v self.mydialoguer
b [end]

:[14]
push.s "obj_chairiel_123"@10889
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
pop.v.v self.mydialoguer

:[end]