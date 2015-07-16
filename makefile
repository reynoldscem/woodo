CC                = gcc
DEFAULTCFLAGS     = -Werror -Wpedantic
DBGCFLAGS         = -g
SIZEOPTIMCFLAGS   = -Os
SAFEOPTIMCFLAGS   = -O3
UNSAFEOPTIMCFLAGS = -Ofast
RM                = rm -f
BUILDDIR          = build
SOURCEDIR         = src

default: WoodoSafeOptim

createBuildDir:
	mkdir -p $(BUILDDIR)

Woodo: createBuildDir
	$(CC) $(DEFAULTCFLAGS) -o $(BUILDDIR)/Woodo $(SOURCEDIR)/Woodo.c

WoodoDBG: createBuildDir
	$(CC) $(DEFAULTCFLAGS) $(DBGCFLAGS) -o $(BUILDDIR)/Woodo $(SOURCEDIR)/Woodo.c

WoodoSafeOptim: createBuildDir
	$(CC) $(DEFAULTCFLAGS) $(SAFEOPTIMCFLAGS) -o $(BUILDDIR)/Woodo $(SOURCEDIR)/Woodo.c 

WoodoUnsafeOptim: createBuildDir
	$(CC) $(DEFAULTCFLAGS) $(UNSAFEOPTIMCFLAGS) -o $(BUILDDIR)/Woodo $(SOURCEDIR)/Woodo.c

WoodoSmall: createBuildDir
	$(CC) $(DEFAULTCFLAGS) $(SIZEOPTIMCFLAGS) -o $(BUILDDIR)/Woodo $(SOURCEDIR)/Woodo.c

clean:
	$(RM) $(BUILDIR)/Woodo
