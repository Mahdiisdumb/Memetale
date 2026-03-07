.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 91
push.v [array]global.flag
pushi.e 4
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [10]

:[5]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.v self.mkid
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.follow
pop.v.v self.remember
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.follow
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.speed
pushi.e 4
pushi.e -5
pushi.e 91
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.facechoice
push.v 1576.y
pushi.e 908
cmp.i.v GT
bf [7]

:[6]
pushi.e 908
pop.v.i 1576.y

:[7]
push.v 1576.y
pushi.e 864
cmp.i.v LT
bf [9]

:[8]
pushi.e 864
pop.v.i 1576.y

:[9]
push.s "obj_monsterkidtrigger5_91"@18397
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger5_92"@18399
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
call.i scr_regulartext(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
push.v 1576.y
pushi.e 908
cmp.i.v GT
bf [16]

:[15]
pushi.e 908
pop.v.i 1576.y

:[16]
push.v 1576.y
pushi.e 864
cmp.i.v LT
bf [18]

:[17]
pushi.e 864
pop.v.i 1576.y

:[18]
push.v self.remember
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.follow
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed

:[end]