.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.size
pushi.e 0
pop.v.i self.con
pushi.e -6
pop.v.i self.timer
pushi.e 0
pop.v.i self.shake
pushi.e 40
pop.v.i global.turntimer
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.another
pushi.e 415
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.dark

:[2]
popenv [1]

:[end]