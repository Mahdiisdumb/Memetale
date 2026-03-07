.localvar 0 arguments

:[0]
push.v self.size
pushi.e 1
cmp.i.v LT
bf [end]

:[1]
push.v self.size
pushi.e 1
conv.i.d
push.v self.no
div.v.d
add.v.v
pop.v.v self.size
pushi.e 2
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[end]