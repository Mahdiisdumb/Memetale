.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.blockon
push.v self.block2
pushi.e -1
push.v self.blockno
conv.v.i
pop.v.v [array]self.block
push.v self.blockno
pushi.e 1
add.i.v
pop.v.v self.blockno
push.v self.blockno
pushi.e 3
cmp.i.v GT
bf [end]

:[1]
pushi.e 0
pop.v.i self.blockno

:[end]