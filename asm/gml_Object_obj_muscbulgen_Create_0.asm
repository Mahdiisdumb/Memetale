.localvar 0 arguments

:[0]
pushglb.v global.firingrate
pushi.e 1
add.i.v
pop.v.v self.firingspeed
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.g
push.v self.g
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -1
pop.v.i self.side

:[2]
push.v self.g
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.side

:[4]
pushi.e 8
pop.v.i self.dmg
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.offset

:[end]