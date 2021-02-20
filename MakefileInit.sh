

FFLAGS=  -O3 -r8 -w
EXENAME= init.run
FC= ifort 

OBJS=inimel_circ.o

$(EXENAME):  $(OBJS)
	$(FC)  $(OBJS) $(FFLAGS) -o $(EXENAME)

inimel_circ.o: inimel_circ.f90
	$(FC) $(FFLAGS) -c $*.f90

clean :
	rm *.o
	rm *.mod

