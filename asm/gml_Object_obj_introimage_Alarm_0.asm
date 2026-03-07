.localvar 0 arguments

:[0]
push.v self.fadercreator
pushglb.v global.faceemotion
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 98
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[2]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushglb.v global.faceemotion
pop.v.v self.fadercreator

:[end]