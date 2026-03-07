.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushbltn.v self.room
pushi.e 311
cmp.i.v EQ
bf [2]

:[1]
push.v 1412.shx
pushi.e 27
add.i.v
pop.v.v self.x
b [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
pushi.e 50
pop.v.i self.y
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.an
pushi.e 948
pushi.e -1
pushi.e 0
pop.v.i [array]self.facespr
pushi.e 953
pushi.e -1
pushi.e 1
pop.v.i [array]self.facespr
pushi.e 952
pushi.e -1
pushi.e 2
pop.v.i [array]self.facespr
pushi.e 954
pushi.e -1
pushi.e 3
pop.v.i [array]self.facespr
pushi.e 951
pushi.e -1
pushi.e 4
pop.v.i [array]self.facespr
pushi.e 950
pushi.e -1
pushi.e 5
pop.v.i [array]self.facespr
pushi.e 949
pushi.e -1
pushi.e 6
pop.v.i [array]self.facespr
call.i scr_murderlv(argc=0)
pushi.e 7
cmp.i.v GTE
bf [end]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[end]