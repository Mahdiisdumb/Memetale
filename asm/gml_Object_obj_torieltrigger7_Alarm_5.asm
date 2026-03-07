.localvar 0 arguments

:[0]
push.v self.ruff
conv.v.i
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 863
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.visible

:[4]
popenv [3]
pushi.e 5
pop.v.i self.conversation
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i 1576.visible
push.s "obj_torieltrigger7_77"@27645
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i 863.phone
pushi.e 1200
pop.v.i 863.usprite
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]