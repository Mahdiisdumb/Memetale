.localvar 0 arguments

:[0]
push.v self.poffed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
pop.v.i 1014.t
pushi.e 60
pushi.e 1014
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.poffed

:[2]
push.v self.sprite_index
pushi.e 1362
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i self.image_speed
pushi.e 1364
pop.v.i self.sprite_index
pushi.e 40
pushi.e 1014
pushi.e 4
pop.v.i [array]self.alarm

:[end]