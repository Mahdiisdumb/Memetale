.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
push.v self.x
pushi.e 3
mod.i.v
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pushi.e 1
add.i.v
pop.v.v self.x

:[2]
push.v self.x
pushi.e 3
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[4]
push.v self.y
pushi.e 3
mod.i.v
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y

:[6]
push.v self.y
pushi.e 3
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y

:[8]
pushi.e 0
pop.v.i self.lastfacing
pushi.e 0
pop.v.i self.nnn
pushi.e 0
pop.v.i self.cutscene
push.v self.x
pop.v.v self.oldx
push.v self.y
pop.v.v self.oldy
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i global.phasing
pushglb.v global.facing
pop.v.v self.facing
pushi.e 0
pop.v.i self.moving
pushi.e 1
pop.v.i self.movement
pushi.e 2375
pop.v.i self.dsprite
pushi.e 2374
pop.v.i self.rsprite
pushi.e 2376
pop.v.i self.usprite
pushi.e 2373
pop.v.i self.lsprite
pushi.e 0
pop.v.i self.inwater

:[end]