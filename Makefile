ifneq ($(KERNELRELEASE),)
# kbuild part of makefile
obj-m  := jit.o
ccflags-y := -I$(src)/inc
else
# normal makefile
KDIR := /home/parallels/workdir/nfs_rfs/home/sdv/linux

default:
	$(MAKE) -C $(KDIR) M=$$PWD
clean:
	$(MAKE) -C $(KDIR) M=$$PWD clean
endif

