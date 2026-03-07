.localvar 0 arguments

:[0]
push.v self.sinr
pushi.e 1
add.i.v
pop.v.v self.sinr
push.v self.x
push.v self.sinr
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x

:[end]