.localvar 0 arguments

:[0]
push.v self.xmid
pop.v.v self.x
push.v self.yzero
push.v self.yno
pushi.e 1
sub.i.v
push.v self.yspace
mul.v.v
add.v.v
pop.v.v self.y
pushi.e 1
pop.v.i self.visible

:[end]