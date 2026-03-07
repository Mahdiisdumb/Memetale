.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
pushi.e 1212
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.middle
pushi.e 1
cmp.i.v EQ
bf [10]

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pop.v.v self.xx
push.v self.xx
pushi.e 0
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.xx

:[4]
push.v self.x
push.v self.xx
pushi.e 60
add.i.v
cmp.v.v LT
bf [7]

:[5]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x
pushi.e 1207
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v 1207.x
pushi.e 3
add.i.v
pop.v.v 1207.x

:[7]
push.v self.x
push.v self.xx
pushi.e 80
add.i.v
cmp.v.v GT
bf [10]

:[8]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x
pushi.e 1207
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
push.v 1207.x
pushi.e 3
sub.i.v
pop.v.v 1207.x

:[10]
push.v self.middle
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
push.v self.xx
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
pushi.e 0
pop.v.i self.xx

:[13]
push.v self.x
push.v self.xx
pushi.e 150
add.i.v
cmp.v.v LT
bf [15]

:[14]
push.v self.x
pushi.e 3
add.i.v
pop.v.v self.x

:[15]
push.v self.x
push.v self.xx
pushi.e 170
add.i.v
cmp.v.v GT
bf [end]

:[16]
push.v self.x
pushi.e 3
sub.i.v
pop.v.v self.x

:[end]