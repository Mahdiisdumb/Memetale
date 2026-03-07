.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [9]

:[2]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 15
add.i.v
push.v self.y
pushi.e 19
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [9]

:[3]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 15
add.i.v
push.v self.y
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [9]

:[4]
push.v self.interactedobject
conv.v.i
pushenv [6]

:[5]
pushi.e 3
pop.v.i self.facing

:[6]
popenv [5]
push.v self.interactedobject
conv.v.i
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.myinteract

:[8]
popenv [7]

:[9]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [17]

:[10]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 15
sub.i.v
push.v self.y
pushi.e 19
add.i.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [17]

:[11]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 3
add.i.v
push.v self.x
pushi.e 15
sub.i.v
push.v self.y
pushi.e 3
add.i.v
push.v self.sprite_height
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
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [17]

:[12]
push.v self.interactedobject
conv.v.i
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.facing

:[14]
popenv [13]
push.v self.interactedobject
conv.v.i
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.myinteract

:[16]
popenv [15]

:[17]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [25]

:[18]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
sub.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [25]

:[19]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
sub.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 4
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [25]

:[20]
push.v self.interactedobject
conv.v.i
pushenv [22]

:[21]
pushi.e 2
pop.v.i self.facing

:[22]
popenv [21]
push.v self.interactedobject
conv.v.i
pushenv [24]

:[23]
pushi.e 1
pop.v.i self.myinteract

:[24]
popenv [23]

:[25]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [end]

:[26]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
sub.i.v
push.v self.x
pushi.e 4
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [end]

:[27]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1370
conv.i.v
push.v self.y
pushi.e 8
add.i.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
sub.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
sub.i.v
push.v self.x
pushi.e 4
add.i.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [end]

:[28]
push.v self.interactedobject
conv.v.i
pushenv [30]

:[29]
pushi.e 0
pop.v.i self.facing

:[30]
popenv [29]
push.v self.interactedobject
conv.v.i
pushenv [32]

:[31]
pushi.e 1
pop.v.i self.myinteract

:[32]
popenv [31]

:[end]