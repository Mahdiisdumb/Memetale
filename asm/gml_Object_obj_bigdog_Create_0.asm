.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 52
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 53
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1298
pop.v.i self.sprite_index

:[7]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.bluh
call.i scr_depth(argc=0)
popz.v
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushbltn.v self.room
pushi.e 73
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
pushi.e 0
pop.v.i self.jeffrey
pushbltn.v self.room
pushi.e 68
cmp.i.v EQ
bf [end]

:[13]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]