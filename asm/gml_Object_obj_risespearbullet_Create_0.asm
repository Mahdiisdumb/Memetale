.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.visible
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.deactivate
pushi.e 0
pop.v.i self.part
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.type
pushi.e 7
pop.v.i self.dmg
pushi.e 283
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 11
pop.v.i self.dmg

:[end]