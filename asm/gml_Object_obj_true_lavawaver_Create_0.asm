.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
pop.v.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e 0
pop.v.i self.init_band
pushi.e 0
pop.v.i self.a
pushi.e 0
pop.v.i self.b
pushi.e 0
pop.v.i self.c
pushi.e 0
pop.v.i self.siner
push.d 3.5
pop.v.d self.boff
pushi.e 3
pop.v.i self.coff
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]