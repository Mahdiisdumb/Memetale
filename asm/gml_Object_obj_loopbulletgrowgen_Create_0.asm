.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.xadd
pushi.e 8
pop.v.i self.totalbt
pushi.e 2
pop.v.i self.radius
pushi.e 55
pop.v.i self.idealradius
push.v self.radius
pushi.e 2
mul.i.v
push.d 3.141592653589793
mul.d.v
pop.v.v self.circ
pushi.e 2
pop.v.i self.speed
pushi.e 0
pop.v.i self.myself
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.blue
pushi.e 999
pop.v.i self.blueone
pushi.e 999
pop.v.i self.specialtimer

:[end]