.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.siner
call.i scr_depth(argc=0)
popz.v
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [2]

:[1]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
pushi.e 1185
conv.i.v
pushi.e 60
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ff
push.v self.ff
conv.v.i
pushenv [6]

:[5]
pushi.e 3
pop.v.i self.image_xscale

:[6]
popenv [5]
push.v self.ff
conv.v.i
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.image_yscale

:[8]
popenv [7]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[9]
pushi.e 0
pop.v.i self.d
pushglb.v global.plot
pushi.e 136
cmp.i.v GTE
bf [11]

:[10]
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[14]
pushi.e -5
pushi.e 402
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[16]
pushi.e 1360
conv.i.v
push.v self.y
push.v self.x
pushi.e 23
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dbud
pushi.e 1939
push.v self.dbud
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 6
conv.i.v
push.v self.y
pushi.e 25
add.i.v
push.v self.x
pushi.e 17
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.tt

:[end]