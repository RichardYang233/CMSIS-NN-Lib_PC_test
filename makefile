
# --------------------- #
#		 Config			#
# --------------------- # 

# Compile set

CC = gcc
CFLAGS = -std=c99 -Wall -g

# Static Library

LIBRARY = ./build/libcmsis-nn.a				\

# Include Dir

INCLUDES = 	-I.								\
			-I./CMSIS-NN/Include 			\
			-I./CMSIS-NN/Include/Internal 	\
			-I./DataReader 					\
			-I./NNInference 				

# Source files

SOURCES = main.c 							\

OBJS = $(SOURCES:.c=.o)

TARGET = main.exe


# --------------------- #
#		    			#
# --------------------- # 

.PHONY: all run clean

all: run clean

run: $(TARGET)
	@echo "Running..."
	@.\$(TARGET)

$(TARGET): $(LIBRARY) $(OBJS)
	@echo "Linking..."
	@$(CC) $(CFLAGS) -o $@ $^ -L. $<

%.o: %.c
	@echo "Compiling $<... "
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean: 
	@del /s /q $(TARGET) *.o > nul
