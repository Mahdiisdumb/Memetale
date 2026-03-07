.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 235
push.v self.sprite_height
sub.v.i
pop.v.v self.y
pushi.e 2
pop.v.i self.vspeed
pushi.e 12
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 1
pop.v.i self.image_index
pushi.e 375
pop.v.i self.y
pushi.e -2
pop.v.i self.vspeed
pushi.e 12
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[end]