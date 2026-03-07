.localvar 0 arguments

:[0]
push.s "music/intronoise.ogg"@2623
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.intronoise
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.intronoise
call.i caster_play(argc=3)
popz.v
pushi.e 600
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 100
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.d
pushi.e 0
pop.v.i self.ballamount
pushi.e 0
pop.v.i self.special_x
pushi.e 0
pop.v.i self.drawpw
pushi.e 0
pop.v.i self.pw1
pushi.e 0
pop.v.i self.pw2
pushi.e 0
pop.v.i self.pw3
pushi.e 0
pop.v.i self.pw4
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [18]

:[1]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Won"@3070
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
pushi.e 1
pop.v.i self.pw1

:[3]
pushi.e 0
conv.i.v
push.s "Truth"@47597
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushi.e 1
pop.v.i self.pw1
pushi.e 1
pop.v.i self.pw2

:[5]
pushi.e 0
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pushi.e 2
cmp.i.v GTE
bf [7]

:[6]
pushi.e 1
pop.v.i self.pw1
pushi.e 1
pop.v.i self.pw2

:[7]
pushi.e 0
conv.i.v
push.s "reset"@3068
conv.s.v
push.s "reset"@3068
conv.s.v
call.i ini_read_real(argc=3)
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
pushi.e 1
pop.v.i self.pw1
pushi.e 1
pop.v.i self.pw2

:[9]
pushi.e 0
conv.i.v
push.s "Intro"@47598
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
pushi.e 1
pop.v.i self.pw3

:[11]
pushi.e 0
conv.i.v
push.s "F"@47599
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
pushi.e 1
pop.v.i self.pw3

:[13]
pushi.e 0
conv.i.v
push.s "SK"@47600
conv.s.v
push.s "Sans"@6900
conv.s.v
call.i ini_read_real(argc=3)
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
pushi.e 1
pop.v.i self.pw3

:[15]
push.s "system_information_963"@3403
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 1
pop.v.i self.pw3

:[17]
call.i ossafe_ini_close(argc=0)
popz.v

:[18]
pushi.e 0
pop.v.i self.proceed

:[end]