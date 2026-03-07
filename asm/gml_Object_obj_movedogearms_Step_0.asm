.localvar 0 arguments

:[0]
push.v self.a
pushi.e 1
add.i.v
pop.v.v self.a
push.v self.a
push.d 4.5
div.d.v
call.i sin(argc=1)
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.y
push.d 0.8
add.d.v
pop.v.v self.y
b [end]

:[2]
push.v self.y
push.d 0.8
sub.d.v
pop.v.v self.y

:[end]