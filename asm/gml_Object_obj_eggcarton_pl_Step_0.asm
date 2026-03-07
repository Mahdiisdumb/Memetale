.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 70
add.i.v
push.v self.siner
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner

:[end]