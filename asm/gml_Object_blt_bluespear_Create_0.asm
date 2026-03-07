.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.dmg
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.speartype
b [3]

:[2]
pushi.e 0
pop.v.i self.speartype

:[3]
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 40
add.i.v
pop.v.v self.y
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 20
add.i.v
pop.v.v self.x
pushi.e -4
pop.v.i self.hspeed
pushi.e 20
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]