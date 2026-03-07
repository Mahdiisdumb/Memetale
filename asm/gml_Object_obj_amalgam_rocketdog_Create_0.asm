.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e 3
pop.v.i self.image_xscale
pushi.e 3
pop.v.i self.image_yscale
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 2
sub.i.v
pop.v.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.shake
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 9
pop.v.i self.dmg

:[end]