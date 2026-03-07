.localvar 0 arguments

:[0]
push.v 1576.y
pushbltn.v self.room_height
pushi.e 80
sub.i.v
cmp.v.v LT
bf [2]

:[1]
push.v 1576.y
pushi.e 130
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
push.v self.birbvol
push.d 0.8
cmp.d.v LT
bf [6]

:[5]
push.v self.birbvol
push.d 0.02
add.d.v
pop.v.v self.birbvol

:[6]
b [9]

:[7]
push.v self.birbvol
push.d 0.05
cmp.d.v GT
bf [9]

:[8]
push.v self.birbvol
push.d 0.05
sub.d.v
pop.v.v self.birbvol

:[9]
push.v self.birbvol
push.v self.birb
call.i caster_set_volume(argc=2)
popz.v

:[end]