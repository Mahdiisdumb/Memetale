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
push.s "obj_puzzlehaterbox_78"@21798
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e -5
pushi.e 280
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1516
pushenv [3]

:[2]
pushi.e 1
pop.v.i self.spec

:[3]
popenv [2]
pushi.e 3
pop.v.i global.facing
push.s "obj_puzzlehaterbox_84"@21800
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[4]
pushi.e -5
pushi.e 280
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 1516
pushenv [7]

:[6]
pushi.e 1
pop.v.i self.spec

:[7]
popenv [6]
pushi.e 3
pop.v.i global.facing
push.s "obj_puzzlehaterbox_91"@21802
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_puzzlehaterbox_92"@21804
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pushi.e -5
pushi.e 280
pop.v.i [array]global.flag

:[8]
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