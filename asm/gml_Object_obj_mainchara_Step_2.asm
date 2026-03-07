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
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
bt [10]

:[9]
push.v self.yprevious
push.v self.y
sub.v.v
call.i abs(argc=1)
push.d 0.01
cmp.d.v GT
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
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [18]

:[16]
push.v self.moving
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v global.encounter
pushi.e 1
add.i.v
pop.v.v global.encounter

:[18]
push.v self.cutscene
pushi.e 0
cmp.i.v EQ
bf [21]

:[19]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
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

:[21]
pushi.e 0
pushenv [23]

:[22]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[23]
popenv [22]

:[end]