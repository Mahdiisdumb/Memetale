.localvar 0 arguments

:[0]
push.v self.hitted
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v 1708.hitno
pop.v.v self.hitno
push.v self.text
pushi.e 1708
push.v self.hitno
conv.v.i
pop.v.v [array]self.hitname
push.v 1708.hitno
pushi.e 1
add.i.v
pop.v.v 1708.hitno
pushi.e 1
pop.v.i self.hitted
pushi.e 1
pop.v.i 1708.ting

:[end]