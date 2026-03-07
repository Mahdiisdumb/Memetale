.localvar 0 arguments

:[0]
push.v self.bullettype
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 169
pop.v.i self.sprite_index

:[2]
push.v self.bullettype
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 167
pop.v.i self.sprite_index

:[4]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [8]

:[7]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x

:[8]
pushi.e 1
pop.v.i self.visible

:[end]