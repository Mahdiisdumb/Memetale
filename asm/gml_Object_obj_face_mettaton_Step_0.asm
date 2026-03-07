.localvar 0 arguments

:[0]
pushglb.v global.faceemotion
pop.v.v self.image_index
pushglb.v global.facechoice
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]