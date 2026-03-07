.localvar 0 arguments

:[0]
pushi.e 364
pop.v.i self.op
push.v self.op
conv.v.i
push.v [stacktop]self.yzero
push.v self.op
conv.v.i
push.v [stacktop]self.yspace
pushi.e 2
mul.i.v
sub.v.v
push.v self.op
conv.v.i
push.v [stacktop]self.yoff
add.v.v
pop.v.v self.y
push.v self.y
pop.v.v self.fakey
push.v self.op
conv.v.i
push.v [stacktop]self.xlen
pushi.e 10
conv.i.d
div.d.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 22
mul.i.v
pop.v.v self.xfactor
push.v self.op
conv.v.i
push.v [stacktop]self.xmid
push.v self.op
conv.v.i
push.v [stacktop]self.xlen
sub.v.v
push.v self.xfactor
add.v.v
pop.v.v self.x
pushi.e 1
pop.v.i self.off
pushi.e 0
pop.v.i self.fakeyamt
pushi.e 0
pop.v.i self.fakeyoff
pushi.e 1
pop.v.i self.move
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]