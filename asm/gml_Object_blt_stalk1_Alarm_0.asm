.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.speed
pushi.e 30
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 6
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
push.v self.y
call.i round(argc=1)
pop.v.v self.y
push.v self.x
call.i round(argc=1)
pop.v.v self.x

:[end]