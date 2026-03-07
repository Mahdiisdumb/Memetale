.localvar 0 arguments

:[0]
push.v self.follow
pushi.e 1
cmp.i.v EQ
bf [12]

:[1]
pushi.e 0
pop.v.i self.moving
push.v 1576.x
push.v self.x
pushi.e 34
sub.i.v
cmp.v.v LT
bf [5]

:[2]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
push.v self.speedup
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[4]
push.v self.lsprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.moving
pushi.e 0
pop.v.i self.look

:[5]
push.v 1576.x
push.v self.x
pushi.e 34
add.i.v
cmp.v.v GT
bf [9]

:[6]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x
push.v self.speedup
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[8]
push.v self.rsprite
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 1
pop.v.i self.moving
pushi.e 0
pop.v.i self.look

:[9]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [12]

:[10]
pushi.e 0
pop.v.i self.speedup
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.v self.look
pushi.e 1
add.i.v
pop.v.v self.look
push.v self.look
pushi.e 60
cmp.i.v GT
bf [12]

:[11]
push.v self.usprite
pop.v.v self.sprite_index

:[12]
push.v self.x
pushi.e 450
cmp.i.v GT
bf [15]

:[13]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e -5
pushi.e 91
push.v [array]global.flag
pushi.e 6
cmp.i.v LT
b [16]

:[15]
push.e 0

:[16]
bf [end]

:[17]
pushi.e 6
pop.v.i self.hspeed
pushi.e 6
pushi.e -5
pushi.e 91
pop.v.i [array]global.flag
pushi.e 2
pop.v.i self.follow
pushi.e 1
pop.v.i self.con
push.v self.rsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 60
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]