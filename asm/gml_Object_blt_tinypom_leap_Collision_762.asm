.localvar 0 arguments

:[0]
push.v self.yprevious
push.v self.vspeed
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity
pushi.e 1
pop.v.i self.barked
push.d 0.2
pop.v.d self.friction
pushi.e 118
pop.v.i self.sprite_index
pushi.e -1
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 6
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm

:[end]