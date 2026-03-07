.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 612
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushbltn.v self.room
pushi.e 120
cmp.i.v EQ
bf [11]

:[1]
call.i scr_murderlv(argc=0)
pushi.e 10
cmp.i.v GTE
bt [3]

:[2]
pushi.e 1134
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushi.e 0
pop.v.i global.msc
push.s "obj_napstafridge_75"@19011
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[6]
pushi.e -5
pushi.e 93
push.v [array]global.flag
pushi.e 2
cmp.i.v GTE
bf [8]

:[7]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
b [11]

:[8]
pushi.e 1135
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[9]
push.v 1135.con
pushi.e 11
cmp.i.v LT
bf [11]

:[10]
pushi.e 11
pop.v.i 1135.con

:[11]
pushbltn.v self.room
pushi.e 141
cmp.i.v EQ
bf [18]

:[12]
pushi.e 258
pop.v.i global.msc
pushglb.v global.plot
pushi.e 126
cmp.i.v LT
bf [14]

:[13]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
pushi.e 0
pop.v.i global.msc
push.s "obj_napstafridge_100"@19012
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[17]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[18]
push.v self.object_index
conv.v.i
dup.i 0
push.v [stacktop]self.talkedto
pushi.e 1
add.i.v
pop.i.v [stacktop]self.talkedto

:[end]