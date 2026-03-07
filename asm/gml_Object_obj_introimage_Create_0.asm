.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.act
pushi.e 4
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
push.s "music/story.ogg"@2610
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.intromusic
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.visible

:[end]