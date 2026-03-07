.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i 1576.image_speed
push.v 1576.speed
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
push.v 1576.xprevious
pop.v.v 1576.x
push.v 1576.yprevious
pop.v.v 1576.y
push.v 1575.up
conv.v.b
bf [3]

:[2]
pushi.e -3
pop.v.i 1576.vspeed

:[3]
push.v 1575.down
conv.v.b
bf [5]

:[4]
pushi.e 3
pop.v.i 1576.vspeed

:[5]
push.v 1575.right
conv.v.b
bf [7]

:[6]
pushi.e 3
pop.v.i 1576.hspeed

:[7]
push.v 1575.left
conv.v.b
bf [9]

:[8]
pushi.e -3
pop.v.i 1576.hspeed

:[9]
pushi.e 3
pushi.e 1372
pushi.e 0
pop.v.i [array]self.alarm

:[end]