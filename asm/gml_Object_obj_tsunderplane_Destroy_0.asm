.localvar 0 arguments

:[0]
push.v self.mercymod
pushi.e 10
cmp.i.v GT
bf [2]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
cmp.v.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e 60
add.i.v
pop.i.v [array]global.goldreward
pushi.e 1
pushi.e -5
pushi.e 149
pop.v.i [array]global.flag

:[5]
push.v self.killed
pushi.e 1
cmp.i.v EQ
bf [11]

:[6]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.xpreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.xpreward
add.v.v
pop.i.v [array]global.xpreward
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.goldreward
add.v.v
pop.i.v [array]global.goldreward
push.v self.mypart1
conv.v.i
pushenv [8]

:[7]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[8]
popenv [7]
push.v global.kills
pushi.e 1
add.i.v
pop.v.v global.kills
pushi.e -5
pushglb.v global.area
conv.v.i
dup.i 1
push.v [array]global.areapop
pushi.e 1
sub.i.v
pop.i.v [array]global.areapop
pushi.e -5
pushglb.v global.area
conv.v.i
push.v [array]global.areapop
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
pushi.e 0
pushi.e -5
pushglb.v global.area
conv.v.i
pop.v.i [array]global.areapop

:[10]
pushi.e 1
pushi.e -5
pushi.e 12
pop.v.i [array]global.flag

:[11]
push.v self.killed
pushi.e 0
cmp.i.v EQ
bf [17]

:[12]
pushi.e 338
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.specialmessage

:[14]
popenv [13]
push.v self.mypart1
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]global.goldreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.goldreward
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsterhp
sub.v.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monstermaxhp
div.v.v
mul.v.v
call.i floor(argc=1)
add.v.v
pop.i.v [array]global.goldreward
push.v self.sprite_index
pop.v.v global.monstersprite
pushi.e 160
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.ddd
pushi.e 0
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.ddd
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
pushi.e -5
pushi.e 10
pop.v.i [array]global.flag

:[17]
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monster

:[end]