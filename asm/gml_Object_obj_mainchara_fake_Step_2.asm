.localvar 0 arguments

:[0]
push.v 1575.left
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v 1575.right
pushi.e 0
cmp.i.v EQ
bf [5]

:[2]
push.v 1575.down
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.v 1575.up
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.moving

:[5]
pushglb.v global.interact
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
pushi.e 0
pop.v.i self.moving
pushi.e 0
pop.v.i self.movement
b [8]

:[7]
pushi.e 1
pop.v.i self.movement

:[8]
push.v self.xprevious
push.v self.x
cmp.v.v NEQ
bt [10]

:[9]
push.v self.yprevious
push.v self.y
cmp.v.v NEQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e 1
pop.v.i self.moving

:[13]
push.v self.moving
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[15]
push.v self.cutscene
pushi.e 0
cmp.i.v EQ
bf [end]

:[16]
pushi.e 1588
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[17]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_xview
push.v self.y
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 10
add.i.v
call.i round(argc=1)
pushi.e -1
pushi.e 0
pop.v.v [array]self.view_yview

:[end]