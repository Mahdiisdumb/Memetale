.localvar 0 arguments

:[0]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 1576.cutscene
pushi.e 1
cmp.i.v EQ
bf [end]

:[2]
pushi.e 1576
pop.v.i self.o
push.v 1576.x
pushi.e 450
cmp.i.v GTE
bf [4]

:[3]
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object

:[4]
push.v 1576.x
pushi.e 450
cmp.i.v LT
bf [end]

:[5]
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
push.v self.o
conv.v.i
push.v [stacktop]self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.o
conv.v.i
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.o
conv.v.i
push.v [stacktop]self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.o
conv.v.i
push.v [stacktop]self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[end]