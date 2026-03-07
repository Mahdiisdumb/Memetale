.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
push.v self.siner
push.v self.i
add.v.v
pop.v.v self.siner2
push.d 0.5
push.v self.siner2
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.4
mul.d.v
add.v.d
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.background_alpha
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.background_x
push.v self.siner2
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 1
mul.i.v
add.v.v
pop.i.v [array]self.background_x
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]