.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i 1575.canquit
pushi.e 0
pop.v.i self.con
pushi.e 120
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.bigshake
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 320
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pop.v.v self.x
pushi.e 240
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.i
pop.v.v self.y
pushi.e 0
pop.v.i self.flashred
pushi.e 0
pop.v.i self.redsiner
push.s "music/zzz_c.ogg"@2820
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ch_sfx1
push.s "music/zzz_c2.ogg"@2819
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.ch_sfx2
pushi.e 0
pop.v.i self.choicer
pushi.e 0
pop.v.i self.choice
pushi.e 0
pop.v.i self.buffer
pushi.e 150
pop.v.i self.writerx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [end]

:[1]
pushi.e 130
pop.v.i self.writerx

:[end]