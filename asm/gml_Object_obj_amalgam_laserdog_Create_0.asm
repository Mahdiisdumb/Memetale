.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 30
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
pop.v.i self.skip
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
pop.v.i self.con
pushi.e 7
pop.v.i self.image_index

:[2]
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 9
pop.v.i self.dmg

:[end]