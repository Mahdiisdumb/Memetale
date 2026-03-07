.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [13]

:[1]
push.v 1418.level
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract
b [13]

:[3]
push.v self.x
pushi.e 400
sub.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.myinteract
pushi.e 1576
pushenv [12]

:[4]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [12]

:[5]
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
bf [12]

:[6]
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
bf [12]

:[7]
push.v self.interactedobject
conv.v.i
pushenv [9]

:[8]
pushi.e 0
pop.v.i self.facing

:[9]
popenv [8]
push.v self.interactedobject
conv.v.i
pushenv [11]

:[10]
pushi.e 115
conv.i.v
call.i script_execute(argc=1)
popz.v

:[11]
popenv [10]

:[12]
popenv [4]
push.v self.x
pushi.e 400
add.i.v
pop.v.v self.x

:[13]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[14]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[15]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]