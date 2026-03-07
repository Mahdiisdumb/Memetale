.localvar 0 arguments

:[0]
call.i scr_monstersum(argc=0)
pop.v.v self.pop
push.v self.pop
pushi.e 1
cmp.i.v GT
bf [2]

:[1]
pushi.e 1
pop.v.i self.mode
b [3]

:[2]
pushi.e 0
pop.v.i self.mode

:[3]
pushi.e 0
pop.v.i self.side
pushi.e 0
pop.v.i self.oldside
pushi.e 9
pop.v.i self.dmg
pushi.e 0
pop.v.i self.shake
pushglb.v global.firingrate
pop.v.v self.rate

:[end]