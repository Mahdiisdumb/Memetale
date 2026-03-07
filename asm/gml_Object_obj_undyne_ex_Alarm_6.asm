.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.blcontype
pushi.e 0
pop.v.i self.uncancel
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
push.v self.mycommand
pushi.e 50
cmp.i.v GT
bf [2]

:[1]
push.v 744.sprite_index
pushi.e 51
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.borderspec
b [6]

:[5]
pushi.e 0
pop.v.i self.borderspec

:[6]
pushi.e 6
pop.v.i global.border
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y
push.v 744.sprite_index
pushi.e 51
cmp.i.v EQ
bf [8]

:[7]
pushi.e 13
pop.v.i global.border
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
pop.v.v 744.x
push.v 760.y
pushi.e 34
add.i.v
pop.v.v 744.y
pushi.e 1
pop.v.i self.greenlock
b [18]

:[8]
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 8
sub.i.v
pop.v.v 744.x
push.v 760.y
pushi.e 34
add.i.v
pop.v.v 744.y
pushi.e 31
pop.v.i global.border
push.v self.orderb
pushi.e 0
cmp.i.v EQ
bt [10]

:[9]
push.v self.orderb
pushi.e 6
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e 7
pop.v.i global.border

:[13]
push.v self.orderb
pushi.e 1
cmp.i.v EQ
bt [15]

:[14]
push.v self.orderb
pushi.e 7
cmp.i.v EQ
b [16]

:[15]
push.e 1

:[16]
bf [18]

:[17]
pushi.e 14
pop.v.i global.border

:[18]
pushi.e 0
pop.v.i self.damagecause

:[end]