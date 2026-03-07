.localvar 0 arguments

:[0]
pushi.e -1
pop.v.i self.myself
pushi.e -5
pushi.e 0
push.v [array]global.bulletvariable
pop.v.v self.number
pushi.e -5
pushi.e 1
push.v [array]global.bulletvariable
pop.v.v self.radius
pushi.e -5
pushi.e 2
push.v [array]global.bulletvariable
pop.v.v self.bullettype
pushi.e 0
pop.v.i self.angle
pushi.e 360
conv.i.d
push.v self.number
div.v.d
pop.v.v self.angleadd

:[end]