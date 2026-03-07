.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 38
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushglb.v global.plot
pushi.e 118
cmp.i.v LT
bf [4]

:[1]
pushi.e 1576
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.uncan

:[3]
popenv [2]
push.s "obj_undyne_echoflower_96"@28503
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 1
pop.v.i self.con
b [5]

:[4]
pushi.e 5
pop.v.i global.typer
push.s "obj_undyne_echoflower_102"@28505
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
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