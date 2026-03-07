.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.murd
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [2]

:[1]
pushi.e 1
pop.v.i self.murd

:[2]
pushi.e 0
pop.v.i self.con

:[end]