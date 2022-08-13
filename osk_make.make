# Makefile for OS-9 M68k
#
# Don't invoke this directly; use osk_make.bat or osk_make.sh
#
-e
-b

ifndef ODIR
ODIR		= .
endif
PROG		= $(ODIR)/bwbasic
SRCS		+= bwb_cmd.c
SRCS		+= bwb_cnd.c
SRCS		+= bwb_dio.c
SRCS		+= bwb_exp.c
SRCS		+= bwb_fnc.c
SRCS		+= bwb_inp.c
SRCS		+= bwb_int.c
SRCS		+= bwb_prn.c
SRCS		+= bwb_stc.c
SRCS		+= bwb_str.c
SRCS		+= bwb_tbl.c
SRCS		+= bwb_var.c
SRCS		+= bwbasic.c
SRCS		+= bwd_cmd.c
SRCS		+= bwd_fun.c
SRCS		+= bwx_tty.c
MAKER		= osk_make.make
DEPS		= $(MAKER)
CFLAGS		= -b -i -o=7 -l=unix.l -olM=64k -olfpegeoe

$(PROG):	$(SRCS) $(DEPS)
	xcc -f=$(PROG) $(CFLAGS) $(SRCS)
