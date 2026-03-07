.localvar 0 arguments

:[0]
push.v self.x
pushi.e 320
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.side

:[2]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [4]

:[3]
pushi.e -1
pop.v.i self.side
pushi.e 147
pop.v.i self.sprite_index
push.v self.x
push.v self.sprite_width
pushi.e 2
sub.i.v
sub.v.v
pop.v.v self.x

:[4]
push.v self.x
pop.v.v self.xs
pushi.e 0
pop.v.i self.offset
pushi.e -3
pop.v.i self.vspeed
pushi.e 15
pop.v.i self.flexspeed
push.v self.flexspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]