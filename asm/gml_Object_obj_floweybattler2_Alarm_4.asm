.localvar 0 arguments

:[0]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.v self.heartdraw
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.heartdraw
pushi.e 1
pop.v.i self.on
push.v self.clap
pushi.e 1
add.i.v
pop.v.v self.clap

:[3]
pushi.e 4
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]