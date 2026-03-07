.localvar 0 arguments

:[0]
push.v self.x
push.v self.xstart
pushi.e 40
sub.i.v
cmp.v.v GT
bf [2]

:[1]
push.v 1575.left
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.x
pushi.e 4
sub.i.v
pop.v.v self.x

:[5]
push.v self.x
push.v self.xstart
pushi.e 40
add.i.v
cmp.v.v LT
bf [7]

:[6]
push.v 1575.right
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[10]
push.v 1575.up
conv.v.b
bf [12]

:[11]
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[12]
push.v 1575.down
conv.v.b
bf [14]

:[13]
push.v self.y
pushi.e 4
add.i.v
pop.v.v self.y

:[14]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v NEQ
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]