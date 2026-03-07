.localvar 0 arguments

:[0]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [17]

:[3]
pushi.e 0
pop.v.i self.myinteract
push.v self.hhspeed
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.vhspeed
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[8]
push.v self.hhspeed
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
bt [10]

:[9]
push.v self.vhspeed
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
b [11]

:[10]
push.e 1

:[11]
bf [17]

:[12]
push.d 0.2
pop.v.d self.image_speed
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bt [14]

:[13]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
pushi.e 16
conv.i.v
call.i snd_play(argc=1)
popz.v

:[17]
pushbltn.v self.room_width
pushi.e -1
pushi.e 0
push.v [array]self.view_wview
sub.v.v
pop.v.v self.gg
pushbltn.v self.room_height
pushi.e -1
pushi.e 0
push.v [array]self.view_hview
sub.v.v
pop.v.v self.hh
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 0
cmp.i.v GTE
bf [19]

:[18]
push.v self.xhome
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x
push.v self.x
push.v self.xprevious
sub.v.v
pop.v.v self.g

:[19]
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
push.v self.gg
cmp.v.v GTE
bf [21]

:[20]
push.v self.xhome
push.v self.gg
push.v self.gg
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.x
push.v self.x
push.v self.xprevious
sub.v.v
pop.v.v self.g

:[21]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e 0
cmp.i.v GTE
bf [23]

:[22]
push.v self.yhome
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.y

:[23]
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
push.v self.hh
cmp.v.v GTE
bf [25]

:[24]
push.v self.yhome
push.v self.hh
push.v self.hh
push.v self.scrollspeed
mul.v.v
sub.v.v
call.i floor(argc=1)
add.v.v
pop.v.v self.y

:[25]
push.v self.xhome
push.v self.hhspeed
add.v.v
pop.v.v self.xhome
push.v self.yhome
push.v self.vhspeed
add.v.v
pop.v.v self.yhome

:[end]