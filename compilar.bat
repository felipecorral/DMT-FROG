c:\lab-est\asm\tasm   /zi   /m3   /t    nuevo.asm  nuevo.obj 
c:\lab-est\asm\tasm   /zi   /m3   /t    modogr.asm  modogr.obj
c:\lab-est\asm\tasm   /zi   /m3   /t	dfoto.asm dfoto.obj
c:\lab-est\asm\tasm   /zi   /m3   /t	refresca.asm refresca.obj
c:\lab-est\asm\tasm   /zi   /m3   /t	intro.asm intro.obj
c:\lab-est\asm\tasm   /zi   /m3   /t	outro.asm outro.obj

pause 

c:\lab-est\asm\tlink   /m/l/v  nuevo.obj modogr.obj dfoto.obj refresca.obj , DMT.exe
c:\lab-est\asm\tlink   /m/l/v  intro.obj , intro.exe
c:\lab-est\asm\tlink   /m/l/v  outro.obj , outro.exe 
pause