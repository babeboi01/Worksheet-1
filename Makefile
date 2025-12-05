NASM = nasm
CC = gcc
NASMFLAGS = -f elf -Isrc
CFLAGS = -m32

all: task1 task1_2 task2_name task2_sum task2_range_sum

task1: src/driver.o src/task1.o src/asm_io.o
	$(CC) $(CFLAGS) $^ -o task1

task1_2: src/driver.o src/task1_2.o src/asm_io.o
	$(CC) $(CFLAGS) $^ -o task1_2

task2_name: src/driver.o src/task2_name.o src/asm_io.o
	$(CC) $(CFLAGS) $^ -o task2_name

task2_sum: src/driver.o src/task2_sum.o src/asm_io.o
	$(CC) $(CFLAGS) $^ -o task2_sum

task2_range_sum: src/driver.o src/task2_range_sum.o src/asm_io.o
	$(CC) $(CFLAGS) $^ -o task2_range_sum

src/%.o: src/%.asm
	$(NASM) $(NASMFLAGS) $< -o $@

src/asm_io.o: src/asm_io.asm
	$(NASM) $(NASMFLAGS) src/asm_io.asm -o src/asm_io.o

src/driver.o: src/driver.c
	$(CC) $(CFLAGS) -c src/driver.c -o src/driver.o

clean:
	rm -f task1 task1_2 task2_name task2_sum task2_range_sum src/*.o
