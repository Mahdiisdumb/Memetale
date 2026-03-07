.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.g
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.v self.object_index
pushi.e 964
cmp.i.v EQ
bf [9]

:[1]
pushi.e -5
pushi.e 55
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.g
pushi.e 1271
pop.v.i self.sprite_index
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y

:[3]
pushi.e -5
pushi.e 55
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.plot
pushi.e 67
cmp.i.v LT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 2
pop.v.i self.g
pushi.e 1358
pop.v.i self.sprite_index
push.v self.y
pushi.e 30
add.i.v
pop.v.v self.y

:[8]
b [14]

:[9]
pushi.e -5
pushi.e 55
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [11]

:[10]
pushi.e -5
pushi.e 55
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v

:[end]