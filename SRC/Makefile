OBJS = presolve.o PCx2.o readmps.o lpmps.o memory.o hash.o \
       parameters.o split.o io.o timers.o  \
       blkLVL.o PCx.o solve.o dcolumns.o wrappers.o \
       basics.o scale.o lp.o

PCX_LIB   =  libPCx.a
MYSOLVER_LIB = ../mysolver/libmysolver.a
F2C_LIB   =  -L../F2C -lf2c

# NG_LIB    is defined in the build script
# WSSMP_LIB is defined in the build script

ifdef MEX
#CFLAGS = -O -D$(PCx_ARCH) -DMEX -I../F2C
CFLAGS = -g -D$(PCx_ARCH) -DMEX -I../F2C
else
CFLAGS = -O -D$(PCx_ARCH) -I../F2C
#CFLAGS = -g -D$(PCx_ARCH) -I../F2C
endif

LFLAGS = -O

include ../MAKEARCH/$(PCx_ARCH).make
# MISC_OBJS is defined in architecture-specific makefile

# this is still the default:

PCx_NgPeyton: main.o $(PCX_LIB) Ng-Peyton.o $(MISC_OBJS) $(NG_LIB)
	$(CC) $(LFLAGS) main.o  Ng-Peyton.o ${TARGETDIR}/$(PCX_LIB) $(MISC_OBJS) $(NG_LIB) $(F2C_LIB) -o ../PCx -lm

# might have to add the parameter -bmaxdata:44000000 for large applications.
# (or with en even larger number)

PCx_wssmp: main.o $(PCX_LIB) wssmp.o $(MISC_OBJS) $(WSSMP_LIB)
	$(CC) $(LFLAGS) main.o wssmp.o ${TARGETDIR}/$(PCX_LIB) $(MISC_OBJS) \
          $(WSSMP_LIB) $(F2C_LIB) -o ../PCx -lm

# template for other solvers

PCx_yoursolver: main.o $(PCX_LIB) musolver.o $(MISC_OBJS) $(MYSOLVER_LIB)
	$(CC) $(LFLAGS) main.o ${TARGETDIR}/$(PCX_LIB) mysolver.o $(MISC_OBJS) \
        $(MYSOLVER_LIB) $(F2C_LIB) -o ../PCx -lm

objs:	$(OBJS)

clean:
	/bin/rm -f *.o $(PCX_LIB) ../PCx

$(PCX_LIB): $(OBJS)
	cd ${TARGETDIR}/; ar r $(PCX_LIB) $(OBJS)
	$(RANLIB) $(PCX_LIB)

.c.o:
	${CC} ${CFLAGS} -c -o ${TARGETDIR}/$*.o $<

.f.o:
	${FC} ${FFLAGS} -c -o ${TARGETDIR}/$*.o $<
