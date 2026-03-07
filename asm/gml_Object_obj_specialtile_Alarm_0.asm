.localvar 0 arguments

:[0]
push.v self.rando
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.garfield
push.d 1.02
div.d.v
pop.v.v self.garfield
push.v self.randofactor
push.d 1.1
div.d.v
pop.v.v self.randofactor
push.v self.randofactor
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e 3
pop.v.i self.randofactor
push.v self.finalrando
pushi.e 1
add.i.v
pop.v.v self.finalrando

:[3]
push.v self.finalrando
pushi.e 12
cmp.i.v GT
bf [5]

:[4]
pushi.e 2
pop.v.i self.randofactor

:[5]
push.v self.finalrando
pushi.e 30
cmp.i.v GT
bf [7]

:[6]
pushi.e 1
pop.v.i self.randofactor

:[7]
push.v self.garfield
pushi.e 1
sub.i.v
pop.v.v self.garfield
push.v self.finalrando
pushi.e 120
cmp.i.v GT
bf [9]

:[8]
pushi.e -1
pop.v.i self.randofactor

:[9]
push.v self.kingrando
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3
conv.i.d
push.v self.garfield
pushi.e 20
conv.i.d
div.d.v
push.d 2.5
add.d.v
div.v.d
push.v 1002.computersound
call.i caster_set_pitch(argc=2)
popz.v

:[11]
push.v self.randofactor
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 7
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.i 16711680
pop.v.i self.mygrey

:[13]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.i 65535
pop.v.i self.mygrey

:[15]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.i 65280
pop.v.i self.mygrey

:[17]
push.v self.gg
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
push.i 8388736
pop.v.i self.mygrey

:[19]
push.v self.gg
pushi.e 4
cmp.i.v EQ
bf [21]

:[20]
push.i 4235519
pop.v.i self.mygrey

:[21]
push.v self.gg
pushi.e 5
cmp.i.v EQ
bf [23]

:[22]
pushi.e 255
pop.v.i self.mygrey

:[23]
push.v self.gg
pushi.e 6
cmp.i.v EQ
bf [25]

:[24]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.mygrey

:[25]
push.v self.randofactor
pushi.e -1
cmp.i.v EQ
bf [end]

:[26]
pushi.e 0
pop.v.i self.kingrando
push.v self.y
pushi.e 120
cmp.i.v LT
bt [28]

:[27]
push.v self.y
pushi.e 160
cmp.i.v GTE
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
pushi.e 255
pop.v.i self.mygrey
b [end]

:[31]
pushi.e 100
conv.i.v
pushi.e 100
conv.i.v
pushi.e 255
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.mygrey

:[end]