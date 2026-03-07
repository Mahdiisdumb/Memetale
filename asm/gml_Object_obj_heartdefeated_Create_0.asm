.localvar 0 arguments

:[0]
pushi.e 20
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 500
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.s "music/gameover.ogg"@2631
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.gameoversong

:[3]
pushi.e -5
pushi.e 272
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.s "music/dogsong.ogg"@2831
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.gameoversong

:[5]
pushi.e -1
pop.v.i self.msgnum
pushi.e 0
pop.v.i self.dingus
pushi.e 1
pop.v.i self.currentvol
pushi.e 0
pop.v.i self.heartcon
pushi.e 0
pop.v.i self.hearttimer
pushi.e -5
pushi.e 500
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e -5
pushi.e 502
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag
pushi.e 0
pop.v.i global.border
pushi.e 0
pop.v.i self.dingus

:[end]