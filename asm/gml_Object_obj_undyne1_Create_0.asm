.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 105
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [7]

:[2]
pushi.e 0
pop.v.i self.con
pushi.e 999
pop.v.i self.image_yscale
pushi.e 1117
conv.i.v
pushi.e 275
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mkid
pushi.e 1119
conv.i.v
pushi.e 100
conv.i.v
pushi.e 260
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 1557
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1487
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 1164
conv.i.v
pushi.e 110
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
pushi.e -5
pushi.e 67
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[3]
push.v self.papyrus
conv.v.i
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]

:[6]
pushi.e 1095
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.stk
push.v self.undyne
push.v self.stk
conv.v.i
pop.v.v [stacktop]self.subject
pushi.e 1533
push.v self.stk
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[7]
pushi.e 0
pop.v.i self.look
pushi.e 0
pop.v.i self.spinagain
pushi.e 0
pop.v.i self.helltrigger

:[end]