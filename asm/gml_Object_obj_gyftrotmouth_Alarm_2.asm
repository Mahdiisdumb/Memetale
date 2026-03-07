.localvar 0 arguments

:[0]
push.v self.image_index
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.image_index
pushi.e 1
sub.i.v
pop.v.v self.image_index
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
b [end]

:[2]
pushi.e 45
pushi.e 60
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]