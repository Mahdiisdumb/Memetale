.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.t
pushi.e 1485
pop.v.i self.mkid
push.v 1576.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
pushi.e 40
add.i.v
cmp.v.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.t

:[3]
push.v 1576.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
pushi.e 40
sub.i.v
cmp.v.v LT
bf [5]

:[4]
pushi.e 2
pop.v.i self.t

:[5]
push.v self.t
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 3
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed

:[7]
push.v self.t
pushi.e 2
cmp.i.v EQ
bf [11]

:[8]
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.xstart
pushi.e 40
sub.i.v
cmp.v.v GT
bf [10]

:[9]
pushi.e -3
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
push.v self.mkid
conv.v.i
push.v [stacktop]self.lsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
b [11]

:[10]
pushi.e 0
pop.v.i self.t

:[11]
push.v self.t
pushi.e 0
cmp.i.v EQ
bf [end]

:[12]
push.v self.mkid
conv.v.i
push.v [stacktop]self.sprite_index
push.v self.mkid
conv.v.i
push.v [stacktop]self.rsprite
cmp.v.v EQ
bf [14]

:[13]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_index

:[14]
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.image_speed
push.v self.mkid
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.v 1576.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
sub.v.v
pushi.e 16
cmp.i.v GT
bf [16]

:[15]
push.v self.mkid
conv.v.i
push.v [stacktop]self.rtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.con

:[16]
push.v 1576.x
push.v self.mkid
conv.v.i
push.v [stacktop]self.x
sub.v.v
pushi.e -10
cmp.i.v LT
bf [18]

:[17]
push.v self.mkid
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.mkid
conv.v.i
pop.v.i [stacktop]self.con

:[18]
push.v self.mkid
conv.v.i
push.v [stacktop]self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[19]
push.d 0.2
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed

:[end]