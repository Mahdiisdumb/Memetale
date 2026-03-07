.localvar 0 arguments

:[0]
push.v self.numero
pushi.e 2
cmp.i.v LT
bf [end]

:[1]
pushi.e 6
pop.v.i self.con
pushi.e 60
pop.v.i self.x
push.d 2.1
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.follow
push.v 1576.x
pushi.e 8
sub.i.v
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.x
push.v 1576.y
pushi.e 8
add.i.v
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.y
push.v self.mkid
conv.v.i
push.v [stacktop]self.usprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.numero

:[end]