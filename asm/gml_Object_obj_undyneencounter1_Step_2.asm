.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 1576
pushenv [3]

:[2]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview

:[3]
popenv [2]
pushi.e -5
pushi.e 85
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1576
pushenv [6]

:[5]
push.v self.x
pushi.e 160
sub.i.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i floor(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview

:[6]
popenv [5]

:[end]