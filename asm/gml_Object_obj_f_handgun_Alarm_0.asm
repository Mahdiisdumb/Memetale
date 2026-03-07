.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 70
pop.v.i self.x
pushi.e 24
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.con

:[2]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushbltn.v self.room_width
pushi.e 70
sub.i.v
pop.v.v self.x
pushi.e -1
pop.v.i self.image_xscale
pushi.e 24
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.con

:[end]