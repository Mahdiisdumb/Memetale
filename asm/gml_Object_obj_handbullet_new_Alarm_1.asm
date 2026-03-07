.localvar 0 arguments

:[0]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 8
pop.v.i self.hspeed
pushi.e 3
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.gravity
pushi.e 90
pop.v.i self.gravity_direction
pushi.e 667
pop.v.i self.sprite_index

:[2]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e -8
pop.v.i self.hspeed
pushi.e -3
pop.v.i self.vspeed
push.d -0.1
pop.v.d self.gravity
pushi.e 90
pop.v.i self.gravity_direction
pushi.e 664
pop.v.i self.sprite_index

:[4]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 6
pop.v.i self.vspeed
pushi.e 666
pop.v.i self.sprite_index

:[6]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
pushi.e -6
pop.v.i self.vspeed
pushi.e 665
pop.v.i self.sprite_index

:[8]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [end]

:[9]
pushi.e 8
pop.v.i self.hspeed
pushi.e 667
pop.v.i self.sprite_index

:[end]