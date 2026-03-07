.localvar 0 arguments

:[0]
push.v self.t
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.d 0.25
pop.v.d 976.image_speed
pushi.e 3
pop.v.i self.t

:[2]
push.v self.t
pushi.e 6
cmp.i.v EQ
bf [4]

:[3]
pushi.e 26
pop.v.i global.battlegroup
pushi.e 0
pushi.e -5
pushi.e 200
pop.v.i [array]global.flag
pushi.e 1
pop.v.i global.mercy
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 10
pop.v.i self.t

:[4]
pushglb.v global.plot
pushi.e 60
cmp.i.v EQ
bf [6]

:[5]
push.v self.t
pushi.e 10
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [19]

:[8]
pushi.e 140
pop.v.i 1576.y
pushi.e 1
pop.v.i global.interact
pushi.e 61
pop.v.i global.plot
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [12]

:[9]
pushi.e 0
pop.v.i global.mercy
pushi.e 0
pop.v.i global.interact
pushi.e 65
pop.v.i global.plot
push.s "music/snowy.ogg"@2633
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 9999
pop.v.i self.t
pushi.e 976
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[12]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bt [14]

:[13]
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 2
cmp.i.v EQ
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
pushi.e 20
pop.v.i self.t

:[17]
pushi.e -5
pushi.e 54
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
pushi.e 26
pop.v.i self.t

:[19]
push.v self.t
pushi.e 20
cmp.i.v EQ
bt [21]

:[20]
push.v self.t
pushi.e 26
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.i global.interact

:[24]
push.v self.t
pushi.e 21
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.i 976.image_index
pushi.e 1362
pop.v.i 976.sprite_index
push.d 0.25
pop.v.d 976.image_speed
pushi.e 22
pop.v.i self.t

:[26]
push.v self.t
pushi.e 23
cmp.i.v EQ
bf [28]

:[27]
push.v 976.sprite_index
pushi.e 1364
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 2
pop.v.i 976.hspeed
push.d 0.25
pop.v.d 976.image_speed
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 24
pop.v.i self.t

:[31]
push.v self.t
pushi.e 25
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i global.mercy
push.s "music/snowy.ogg"@2633
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.95
conv.d.v
pushi.e 1
conv.i.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 65
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[33]
push.v self.t
pushi.e 27
cmp.i.v EQ
bf [35]

:[34]
pushi.e 0
pop.v.i 976.image_index
pushi.e 1365
pop.v.i 976.sprite_index
pushi.e 2
pop.v.i 976.hspeed
push.d 0.5
pop.v.d 976.image_speed
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 28
pop.v.i self.t

:[35]
push.v self.t
pushi.e 29
cmp.i.v EQ
bf [end]

:[36]
pushi.e 25
pop.v.i self.t

:[end]