.localvar 0 arguments

:[0]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.background_visible
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.background_visible
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.background_visible
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.idealvolume
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.idealvolume
b [3]

:[2]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.background_visible
pushi.e 0
pushi.e -1
pushi.e 2
pop.v.i [array]self.background_visible
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.background_visible
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.idealvolume
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.idealvolume

:[3]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.interact

:[end]