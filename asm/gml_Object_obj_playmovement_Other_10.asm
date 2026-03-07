.localvar 0 arguments

:[0]
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.mett
conv.v.i
pop.v.i [stacktop]self.vspeed
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]