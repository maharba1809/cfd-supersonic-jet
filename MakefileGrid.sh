FFLAGS=  -O3 -r8 -w
EXENAME= grid.run
FC= ifort 

OBJS=malla_genera.o

$(EXENAME):  $(OBJS)
	$(FC)  $(OBJS) $(FFLAGS) -o $(EXENAME)

malla_genera.o: malla_genera.f90
	$(FC) $(FFLAGS) -c $*.f90

clean :
	rm *.o
	rm *.mod

