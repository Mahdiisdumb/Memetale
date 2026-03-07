.localvar 0 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.uncan
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1530
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [13]

:[6]
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
bf [13]

:[7]
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
bf [13]

:[8]
push.v self.interactedobject
conv.v.i
pushenv [10]

:[9]
pushi.e 3
pop.v.i self.facing

:[10]
popenv [9]
push.v self.interactedobject
conv.v.i
pushenv [12]

:[11]
pushi.e 115
conv.i.v
call.i script_execute(argc=1)
popz.v

:[12]
popenv [11]

:[13]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [21]

:[14]
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
bf [21]

:[15]
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
bf [21]

:[16]
push.v self.interactedobject
conv.v.i
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.facing

:[18]
popenv [17]
push.v self.interactedobject
conv.v.i
pushenv [20]

:[19]
pushi.e 115
conv.i.v
call.i script_execute(argc=1)
popz.v

:[20]
popenv [19]

:[21]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [29]

:[22]
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
bf [29]

:[23]
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
bf [29]

:[24]
push.v self.interactedobject
conv.v.i
pushenv [26]

:[25]
pushi.e 2
pop.v.i self.facing

:[26]
popenv [25]
push.v self.interactedobject
conv.v.i
pushenv [28]

:[27]
pushi.e 115
conv.i.v
call.i script_execute(argc=1)
popz.v

:[28]
popenv [27]

:[29]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [end]

:[30]
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

:[31]
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

:[32]
push.v self.interactedobject
conv.v.i
pushenv [34]

:[33]
pushi.e 0
pop.v.i self.facing

:[34]
popenv [33]
push.v self.interactedobject
conv.v.i
pushenv [36]

:[35]
pushi.e 115
conv.i.v
call.i script_execute(argc=1)
popz.v

:[36]
popenv [35]

:[end]