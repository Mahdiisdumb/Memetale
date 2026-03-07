.localvar 0 arguments

:[0]
pushi.e 50
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.conversation
pushglb.v global.plot
pushi.e 18
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [5]

:[2]
pushi.e 1576
pushenv [4]

:[3]
pushi.e 38
pop.v.i self.x
pushi.e 144
pop.v.i self.y

:[4]
popenv [3]
pushi.e 4
pop.v.i global.typer
pushi.e 99
pop.v.i global.interact
pushi.e 1
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.s "obj_torieltrigger7_41"@27643
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
popz.v
pushi.e 1
pop.v.i self.conversation

:[5]
pushi.e 1
pop.v.i self.volume
pushi.e 0
pop.v.i self.fademusicout
pushi.e 0
pop.v.i self.tiddywinkle
pushi.e 2
pop.v.i self.ruff

:[end]