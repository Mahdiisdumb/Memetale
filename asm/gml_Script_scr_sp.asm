.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e -1
push.v self.bmax
conv.v.i
pop.v.v [array]self.btype
pushbltn.v self.argument1
pushi.e -1
push.v self.bmax
conv.v.i
pop.v.v [array]self.bspeed
pushbltn.v self.argument2
pushi.e -1
push.v self.bmax
conv.v.i
pop.v.v [array]self.bchoice
pushbltn.v self.argument3
pushi.e -1
push.v self.bmax
conv.v.i
pop.v.v [array]self.bside
pushbltn.v self.argument4
pushi.e -1
push.v self.bmax
conv.v.i
pop.v.v [array]self.btime
push.v self.bmax
pushi.e 1
add.i.v
pop.v.v self.bmax

:[end]