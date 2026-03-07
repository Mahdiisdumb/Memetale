.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.fun
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.s "file0"@3189
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushi.e 1
pop.v.i self.fun
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e -1
conv.i.v
push.s "EndF"@47578
conv.s.v
push.s "EndF"@47578
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.tr
push.v self.tr
pushi.e 2
cmp.i.v GTE
bf [6]

:[5]
pushi.e 0
pop.v.i self.fun

:[6]
pushi.e 0
pop.v.i self.menu
pushi.e 0
pop.v.i self.menu_engage
pushi.e 5
pop.v.i self.buffer
push.v 1575.j_ch
pushi.e 0
cmp.i.v GT
bf [9]

:[7]
push.v 1575.j_ch
call.i joystick_has_pov(argc=1)
conv.v.b
not.b
bf [9]

:[8]
pushi.e 1
pop.v.i global.joypad_dir

:[9]
push.s "joyconfig_resetted"@31696
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.r_line
pushi.e 0
pop.v.i self.o_o
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.r_buffer
pushi.e 0
pop.v.i self.intro
pushi.e 0
pop.v.i self.weather
pushi.e 0
pop.v.i self.extreme2
pushi.e 0
pop.v.i self.extreme
pushi.e 0
pop.v.i self.rectile
pushi.e 0
pop.v.i self.harp
pushi.e 0
pop.v.i self.weathermusic
push.v self.fun
pushi.e 1
cmp.i.v EQ
bf [end]

:[10]
pushi.e 1
pop.v.i self.intro
pushi.e -1
pop.v.i self.menu_engage
pushi.e 1
pop.v.i self.weather
pushbltn.v self.current_month
pop.v.v self.month
push.v self.month
pushi.e 12
cmp.i.v EQ
bt [13]

:[11]
push.v self.month
pushi.e 1
cmp.i.v EQ
bt [13]

:[12]
push.v self.month
pushi.e 2
cmp.i.v EQ
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.weather

:[16]
push.v self.month
pushi.e 3
cmp.i.v EQ
bt [19]

:[17]
push.v self.month
pushi.e 4
cmp.i.v EQ
bt [19]

:[18]
push.v self.month
pushi.e 5
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 2
pop.v.i self.weather

:[22]
push.v self.month
pushi.e 6
cmp.i.v EQ
bt [25]

:[23]
push.v self.month
pushi.e 7
cmp.i.v EQ
bt [25]

:[24]
push.v self.month
pushi.e 8
cmp.i.v EQ
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
pushi.e 3
pop.v.i self.weather

:[28]
push.v self.month
pushi.e 9
cmp.i.v EQ
bt [31]

:[29]
push.v self.month
pushi.e 10
cmp.i.v EQ
bt [31]

:[30]
push.v self.month
pushi.e 11
cmp.i.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [end]

:[33]
pushi.e 4
pop.v.i self.weather

:[end]