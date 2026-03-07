.localvar 0 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.x
cmp.v.v LT
bf [2]

:[1]
push.v self.man
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 300
pushi.e 90
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.man

:[end]