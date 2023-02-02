PROGS = shell trace.so
EXTRA-CLEAN = sh-tests.*.log

include Makefile.include

CC += -fsanitize=address
CPPFLAGS += -DSTUDENT
LDLIBS += -lreadline

shell: shell.o command.o lexer.o jobs.o
