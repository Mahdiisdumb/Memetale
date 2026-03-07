.localvar 0 arguments

:[0]
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.r
pushi.e 2
pushi.e 2
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.raspeed
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.rno
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.rang
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.rspeed
pushi.e 130
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.d 0.1
pop.v.d self.image_alpha
pushi.e 0
pop.v.i self.spec

:[end]