.localvar 0 arguments

:[0]
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
call.i scr_npc_anim(argc=0)
popz.v
pushbltn.v self.room
pushi.e 85
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e -5
pushi.e 105
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[6]
pushbltn.v self.room
pushi.e 98
cmp.i.v EQ
bf [8]

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [12]

:[10]
pushi.e -5
pushi.e 106
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[12]
pushbltn.v self.room
pushi.e 146
cmp.i.v EQ
bf [14]

:[13]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [18]

:[16]
pushi.e -5
pushi.e 110
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[18]
pushbltn.v self.room
pushi.e 161
cmp.i.v EQ
bf [20]

:[19]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [24]

:[22]
pushi.e -5
pushi.e 111
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[24]
pushbltn.v self.room
pushi.e 224
cmp.i.v EQ
bf [33]

:[25]
push.v self.x
pushi.e -10
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
add.v.i
cmp.v.v LT
bf [29]

:[26]
pushi.e -5
pushi.e 114
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.image_index
b [29]

:[28]
pushi.e 0
pop.v.i self.image_index

:[29]
push.v self.x
pushi.e -10
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
add.v.i
cmp.v.v GTE
bf [33]

:[30]
pushi.e -5
pushi.e 115
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.image_index
b [33]

:[32]
pushi.e 0
pop.v.i self.image_index

:[33]
push.v self.sprite_index
pushi.e 1772
cmp.i.v EQ
bf [35]

:[34]
push.d 0.2
pop.v.d self.image_speed

:[35]
push.v self.sprite_index
pushi.e 2065
cmp.i.v EQ
bf [end]

:[36]
push.d 0.2
pop.v.d self.image_speed

:[end]