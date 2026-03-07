.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.rotatenoise
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.image_angle
pushi.e 3
add.i.v
pop.v.v self.image_angle

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.rotatenoise
call.i caster_stop(argc=1)
popz.v
pushi.e 3
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[6]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.createnoise
call.i caster_play(argc=3)
popz.v
pushi.e 742
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
pushi.e 2196
pop.v.i self.sprite_index
pushi.e 5
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[8]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i 744.movement
push.v self.x
pushi.e 8
sub.i.v
pop.v.v 744.x
push.v self.y
pushi.e 8
sub.i.v
pop.v.v 744.y
pushi.e 1
pop.v.i 744.shot
pushi.e 2197
pop.v.i 744.sprite_index
pushi.e 15
pop.v.i 299.con
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.con
pushi.e 4
cmp.i.v GT
bf [12]

:[11]
pushi.e 90
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 740
conv.i.v
call.i instance_number(argc=1)
pushi.e 3
cmp.i.v LT
bf [end]

:[15]
pushi.e 740
conv.i.v
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 4
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 117
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]