.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.offon
push.v 1587.x
pushi.e 8
add.i.v
pop.v.v self.x
push.v 1587.y
pushi.e 8
add.i.v
pop.v.v self.y
push.v self.y
pushi.e 60
add.i.v
pushbltn.v self.room_height
cmp.v.v GT
bf [2]

:[1]
push.v self.y
push.v self.y
pushi.e 60
add.i.v
pushbltn.v self.room_height
sub.v.v
sub.v.v
pop.v.v self.y

:[2]
pushi.e 0
pop.v.i self.bonus
push.v self.object_index
call.i instance_number(argc=1)
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
pop.v.i self.bonus

:[4]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 164
conv.i.v
call.i snd_stop(argc=1)
popz.v
pushi.e 164
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]