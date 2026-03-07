.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [6]

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
pushi.e 0
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
push.s "obj_puzzlewall1_62"@21806
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_puzzlewall1_63"@21808
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.talkedto
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_puzzlewall1_66"@21810
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_puzzlewall1_67"@21812
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[3]
push.v self.talkedto
pushi.e 1
cmp.i.v GT
bf [5]

:[4]
push.s "obj_puzzlewall1_71"@21814
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[5]
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

:[6]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i global.facing

:[8]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.conversation

:[end]