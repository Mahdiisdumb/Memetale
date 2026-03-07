.localvar 0 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.ss
pushi.e 1
add.i.v
pop.v.v self.ss

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 7
cmp.i.v LT
bf [end]

:[4]
push.v self.y
push.v self.x
pushi.e 20
push.v self.i
mul.v.i
add.v.v
push.v self.ss
pushi.e 4
conv.i.d
div.d.v
pushi.e 1927
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[end]