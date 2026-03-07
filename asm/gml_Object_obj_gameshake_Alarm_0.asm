.localvar 0 arguments

:[0]
push.v self.gameshake
push.d -0.8
mul.d.v
pop.v.v self.gameshake
push.v self.gameshake
call.i floor(argc=1)
pop.v.v self.gameshake
pushglb.v global.osflavor
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.wy
push.v self.wx
push.v self.gameshake
add.v.v
call.i window_set_position(argc=2)
popz.v

:[2]
pushi.e 8
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.gameshake
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [end]

:[3]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [5]

:[4]
call.i game_end(argc=0)
popz.v
b [end]

:[5]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 0
pushi.e -1
pushi.e 3
pop.v.i [array]self.background_visible
pushi.e 1
pop.v.i self.in_silence
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 750
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm
pushbltn.v self.os_type
pushi.e 12
cmp.i.v EQ
bf [end]

:[6]
pushi.e 600
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[end]