.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.active
push.s ""@36
pop.v.s self.text
pushi.e 0
pop.v.i self.text_xofs
push.s ""@36
pop.v.s self.text2
pushi.e 2
pop.v.i self.myspeed
pushi.e 0
pop.v.i self.alpha
pushi.e 0
pop.v.i self.active
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.fader
pushi.e 1
pop.v.i self.size
pushi.e 2
pop.v.i self.bigscale
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [end]

:[1]
push.d 1.5
pop.v.d self.bigscale

:[end]