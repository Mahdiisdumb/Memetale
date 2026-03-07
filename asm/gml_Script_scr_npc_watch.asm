.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[2]
push.v 1576.x
push.v 1576.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
sub.v.v
pop.v.v self.xdist
push.v 1576.bbox_top
push.v self.bbox_top
sub.v.v
pop.v.v self.ydist
push.v self.xdist
call.i abs(argc=1)
push.v self.ydist
call.i abs(argc=1)
cmp.v.v GTE
bf [7]

:[3]
push.v self.xdist
pushi.e 0
cmp.i.v GTE
bf [5]

:[4]
push.v self.rtsprite
pop.v.v self.sprite_index
b [6]

:[5]
push.v self.ltsprite
pop.v.v self.sprite_index

:[6]
b [10]

:[7]
push.v self.ydist
pushi.e 0
cmp.i.v GTE
bf [9]

:[8]
push.v self.dtsprite
pop.v.v self.sprite_index
b [10]

:[9]
push.v self.utsprite
pop.v.v self.sprite_index

:[10]
pushbltn.v self.argument0
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[12]
push.v 1576.x
push.v 1576.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
sub.v.v
pop.v.v self.xdist
push.v 1576.bbox_top
push.v self.bbox_top
sub.v.v
pop.v.v self.ydist
push.v self.xdist
call.i abs(argc=1)
push.v self.ydist
call.i abs(argc=1)
cmp.v.v GTE
bf [17]

:[13]
push.v self.xdist
pushi.e 0
cmp.i.v GTE
bf [15]

:[14]
push.v self.rsprite
pop.v.v self.sprite_index
b [16]

:[15]
push.v self.lsprite
pop.v.v self.sprite_index

:[16]
b [end]

:[17]
push.v self.ydist
pushi.e 0
cmp.i.v GTE
bf [19]

:[18]
push.v self.dsprite
pop.v.v self.sprite_index
b [end]

:[19]
push.v self.usprite
pop.v.v self.sprite_index

:[end]