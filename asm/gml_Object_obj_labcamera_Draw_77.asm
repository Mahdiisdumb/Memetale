.localvar 0 arguments
.localvar 1 xx 8426
.localvar 2 yy 8427

:[0]
push.v self.drawnlab
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.entrance
pushi.e 3
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.lab
call.i sprite_delete(argc=1)
popz.v

:[5]
push.v 1576.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
sub.v.v
pushi.e 2
mul.i.v
pop.v.v self.charax
push.v 1576.y
pushi.e 2
mul.i.v
pop.v.v self.charay
push.v self.charax
pushi.e 10
sub.i.v
pop.v.v local.xx
push.v self.charay
pushi.e 5
sub.i.v
pop.v.v local.yy
pushloc.v local.xx
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushi.e 0
pop.v.i local.xx

:[7]
pushloc.v local.yy
pushi.e 0
cmp.i.v LT
bf [9]

:[8]
pushi.e 0
pop.v.i local.yy

:[9]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 40
conv.i.v
pushi.e 60
conv.i.v
pushloc.v local.yy
pushloc.v local.xx
call.i sprite_create_from_screen_x(argc=8)
pop.v.v self.lab
push.v self.lab
pop.v.v self.sprite_index
push.d 0.25
pop.v.d self.image_xscale
push.d 0.25
pop.v.d self.image_yscale
pushi.e 1
pop.v.i self.drawnlab

:[end]