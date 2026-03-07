.localvar 0 arguments

:[0]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.con
pushi.e 1
pop.v.i self.speedup
pushi.e 1
pop.v.i self.follow

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i self.hspeed
push.v self.usprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.con
pushi.e 110
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]