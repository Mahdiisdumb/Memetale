.localvar 0 arguments

:[0]
push.v self.image_yscale
pushi.e 1
add.i.v
pop.v.v self.image_yscale
pushi.e 192
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.over
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i self.over

:[end]