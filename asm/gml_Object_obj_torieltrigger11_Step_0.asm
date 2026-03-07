.localvar 0 arguments

:[0]
push.v self.dingus
pushi.e 1
add.i.v
pop.v.v self.dingus
pushglb.v global.plot
pushi.e 23
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
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 2
pop.v.i 863.facing
pushi.e 90
pop.v.i 863.direction

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
pushi.e 39
conv.i.v
call.i path_start(argc=4)
popz.v

:[11]
popenv [10]
pushi.e 24
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
pushi.e 6
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_torieltrigger11_79"@27544
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_torieltrigger11_80"@27546
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
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