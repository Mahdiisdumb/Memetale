.localvar 0 arguments

:[0]
push.v self.top
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pop.v.v self.y
pushi.e 2
pop.v.i self.vspeed
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.top
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
pop.v.v self.y
pushi.e 732
pop.v.i self.sprite_index
pushi.e 734
pop.v.i self.mask_index
pushi.e -2
pop.v.i self.vspeed
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
pushi.e 1
pop.v.i self.visible

:[end]