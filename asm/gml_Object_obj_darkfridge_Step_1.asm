.localvar 0 arguments

:[0]
push.v self.shsh
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.xstart
push.v self.shsh
call.i random(argc=1)
add.v.v
push.v self.shsh
call.i random(argc=1)
sub.v.v
pop.v.v self.x
push.v self.ystart
push.v self.shsh
call.i random(argc=1)
add.v.v
push.v self.shsh
call.i random(argc=1)
sub.v.v
pop.v.v self.y
b [end]

:[2]
push.v self.xstart
pop.v.v self.x
push.v self.ystart
pop.v.v self.y

:[end]