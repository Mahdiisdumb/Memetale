.localvar 0 arguments

:[0]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [8]

:[1]
pushi.e 1
pop.v.i global.interact
push.v self.xx
pushi.e 15
cmp.i.v LT
bf [3]

:[2]
push.v self.xx
push.d 0.5
add.d.v
pop.v.v self.xx

:[3]
pushi.e -60
pop.v.i 1576.y
push.v 1576.x
push.v self.xx
add.v.v
pop.v.v 1576.x
push.v 1576.x
call.i ceil(argc=1)
pop.v.v 1576.x
push.v 1576.x
pushi.e 2100
cmp.i.v GTE
bf [6]

:[4]
push.v self.xx
pushi.e 3
cmp.i.v GT
bf [6]

:[5]
push.v self.xx
pushi.e 1
sub.i.v
pop.v.v self.xx

:[6]
push.v 1576.x
pushi.e 2335
cmp.i.v GTE
bf [8]

:[7]
pushi.e 2336
pop.v.i 1576.x
pushi.e 118
pop.v.i 1576.y
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.xx

:[8]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [end]

:[9]
push.v self.xx
pushi.e 15
cmp.i.v LT
bf [11]

:[10]
push.v self.xx
push.d 0.5
add.d.v
pop.v.v self.xx

:[11]
pushi.e 1
pop.v.i global.interact
pushi.e -60
pop.v.i 1576.y
push.v 1576.x
push.v self.xx
sub.v.v
pop.v.v 1576.x
push.v 1576.x
call.i floor(argc=1)
pop.v.v 1576.x
push.v 1576.x
pushi.e 960
cmp.i.v LTE
bf [14]

:[12]
push.v self.xx
pushi.e 3
cmp.i.v GT
bf [14]

:[13]
push.v self.xx
pushi.e 1
sub.i.v
pop.v.v self.xx

:[14]
push.v 1576.x
pushi.e 734
cmp.i.v LTE
bf [end]

:[15]
pushi.e 732
pop.v.i 1576.x
pushi.e 106
pop.v.i 1576.y
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.xx

:[end]