.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.visible
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 118
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 119
pop.v.i self.sprite_index

:[2]
pushi.e 9
pop.v.i self.dmg

:[end]