.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
push.v self.sprite_height
sub.v.v
pushi.e 15
add.i.v
pop.v.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
push.v self.sprite_width
sub.v.v
pushi.e 19
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.walking
pushi.e 2
pop.v.i self.shake
push.v self.y
pop.v.v self.nowy
push.v self.x
pop.v.v self.nowx
pushi.e 30
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.trueindex
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.atimer
pushi.e 9
pop.v.i self.dmg

:[end]