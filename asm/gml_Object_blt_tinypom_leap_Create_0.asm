.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
push.d 0.334
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.barked
pushi.e 10
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pop.v.v self.y

:[end]