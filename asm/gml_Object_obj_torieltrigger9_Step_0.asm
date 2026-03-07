.localvar 0 arguments

:[0]
push.v self.dingus
pushi.e 1
add.i.v
pop.v.v self.dingus
pushglb.v global.plot
pushi.e 21
cmp.i.v EQ
bf [2]

:[1]
push.v self.dingus
pushi.e 2
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 863
conv.i.v
pushi.e 90
conv.i.v
pushi.e 370
conv.i.v
call.i instance_create(argc=3)
popz.v

:[5]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushi.e 863
pushenv [11]

:[10]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 41
conv.i.v
call.i path_start(argc=4)
popz.v

:[11]
popenv [10]
pushi.e 22
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[12]
pushi.e 863
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[13]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 2
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_torieltrigger9_77"@27673
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger9_78"@27675
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_torieltrigger9_79"@27677
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_torieltrigger9_80"@27679
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_torieltrigger9_81"@27681
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg
push.s "obj_torieltrigger9_82"@27683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 5
pop.v.v [array]global.msg
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

:[end]