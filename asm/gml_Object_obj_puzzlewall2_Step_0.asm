.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v 1576.x
pushi.e 4
add.i.v
pop.v.v 1576.x
pushi.e 1
pop.v.i global.facing
pushi.e 0
pop.v.i global.msc
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_puzzlewall2_62"@21816
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_puzzlewall2_63"@21818
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_puzzlewall2_64"@21820
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 2
pop.v.i self.conversation

:[2]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.facing

:[4]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.conversation

:[end]