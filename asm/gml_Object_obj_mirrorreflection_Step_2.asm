.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.image_blend
pop.v.v self.image_blend
push.v 1576.x
pop.v.v self.x
push.v self.horizon
push.v 1576.y
push.v self.horizon
sub.v.v
sub.v.v
pop.v.v self.y
push.v self.y
push.v self.ceiling
cmp.v.v LT
bf [3]

:[2]
push.v self.ceiling
pop.v.v self.y

:[3]
push.v 1576.sprite_index
pop.v.v self.sprite_index
push.v 1576.image_index
pop.v.v self.image_index
push.v self.sprite_index
pushi.e 1131
cmp.i.v EQ
bf [5]

:[4]
push.v self.flip
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1132
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.flip

:[8]
push.v self.sprite_index
pushi.e 1132
cmp.i.v EQ
bf [10]

:[9]
push.v self.flip
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 1131
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.flip

:[13]
pushi.e 0
pop.v.i self.flip

:[end]