.localvar 0 arguments

:[0]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.vspeed
pushi.e 1
pop.v.i self.anchor
pushi.e 3
pop.v.i self.con

:[2]
push.v self.anchor
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
push.v self.top
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pop.v.v self.y

:[5]
push.v self.top
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pop.v.v self.y

:[7]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]