.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 619
pop.v.i global.msc
b [3]

:[2]
pushi.e 619
pop.v.i global.msc
pushi.e 0
pop.v.i self.blcontimer
pushi.e 0
pop.v.i self.encouragement
pushi.e 0
pop.v.i self.blconyes
pushi.e 0
pop.v.i self.snailtimer
pushi.e 0
pop.v.i self.snailsad
pushi.e 0
pop.v.i self.won
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.con

:[3]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]