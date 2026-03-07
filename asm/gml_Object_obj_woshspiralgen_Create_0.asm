.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.blue
pushi.e 7
pop.v.i self.dmg
pushglb.v global.firingrate
pop.v.v self.rate
push.v self.rate
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.longnote
pushi.e 0
pop.v.i self.direction
pushi.e 6
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 5
pop.v.i self.turn
pushi.e -1
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.green
pushi.e 0
pop.v.i self.cleaner
pushi.e 0
pop.v.i self.backwards
call.i scr_monstersum(argc=0)
pop.v.v self.sum
pushi.e 30
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 30
conv.i.v
call.i random(argc=1)
pop.v.v self.siner2

:[end]