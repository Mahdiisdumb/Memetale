.localvar 0 arguments

:[0]
push.v self.shakeboy
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.shake
push.d 0.2
add.d.v
pop.v.v self.shake
push.v self.x
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.shake
call.i random(argc=1)
push.v self.shake
call.i random(argc=1)
sub.v.v
add.v.v
pop.v.v self.y

:[end]