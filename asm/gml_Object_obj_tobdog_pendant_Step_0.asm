.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.d 0.25
pop.v.d self.image_speed
push.v self.x
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e 1
sub.i.v
add.v.v
pop.v.v self.y
pushi.e 2
conv.i.v
push.v 1149.y
pushi.e 5
sub.i.v
push.v 1149.x
pushi.e 4
sub.i.v
call.i move_towards_point(argc=3)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [8]

:[3]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushi.e 1616
pop.v.i self.sprite_index
b [6]

:[5]
pushi.e 1611
pop.v.i self.sprite_index

:[6]
push.v 1149.y
pushi.e 5
sub.i.v
push.v 1149.x
pushi.e 4
sub.i.v
call.i distance_to_point(argc=2)
call.i abs(argc=1)
pushi.e 2
cmp.i.v LT
bf [8]

:[7]
pushi.e 2
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 2
cmp.i.v EQ
bt [11]

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bt [11]

:[10]
push.v self.con
pushi.e 4
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
push.d 0.25
pop.v.d self.image_speed
push.v 1149.x
pushi.e 4
sub.i.v
pop.v.v self.x
push.v 1149.y
pushi.e 5
sub.i.v
pop.v.v self.y
push.v self.x
pushi.e 1
conv.i.v
call.i random(argc=1)
push.d 0.5
sub.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.d 1.2
conv.d.v
call.i random(argc=1)
push.d 0.5
sub.d.v
add.v.v
pop.v.v self.y

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 5
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [23]

:[20]
pushi.e 2
conv.i.v
push.v self.y
pushi.e 100
add.i.v
push.v self.x
pushi.e 400
add.i.v
call.i move_towards_point(argc=3)
popz.v
push.v self.x
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.v.v self.x
push.v self.y
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
add.v.v
pop.v.v self.y
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
pushi.e 1616
pop.v.i self.sprite_index
b [23]

:[22]
pushi.e 1611
pop.v.i self.sprite_index

:[23]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [25]

:[24]
pushi.e 5
pop.v.i 1149.con
pushi.e 7
pop.v.i self.con

:[25]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[26]
pushi.e 1149
pushenv [28]

:[27]
pushi.e 1
pop.v.i self.image_index

:[28]
popenv [27]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
push.s "obj_tobdog_pendant_137"@27039
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[end]