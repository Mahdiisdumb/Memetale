.localvar 0 arguments

:[0]
pushi.e 450
pop.v.i self.stretchwidth
pushi.e 450
conv.i.d
pushglb.v global.floweymaxhp
div.v.d
pop.v.v self.stretchfactor
pushglb.v global.floweyhp
pop.v.v self.apparenthp
pushglb.v global.floweyhp
pop.v.v self.actualhp
pushglb.v global.floweymaxhp
pop.v.v self.maxhp
pushi.e 0
pop.v.i self.negative
pushglb.v global.damage
pop.v.v self.dmg
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.i
push.v self.dmg
pushi.e 0
cmp.i.v NEQ
bf [end]

:[1]
pushi.e -4
pop.v.i self.vspeed
push.d 0.5
pop.v.d self.gravity
pushi.e 270
pop.v.i self.gravity_direction

:[end]