.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i global.interact
pushi.e -5
pushi.e 51
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[5]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_switchhelptrigger_69"@26943
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
pushi.e 2
pop.v.i self.conversation

:[end]