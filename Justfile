c3: c3c --use-stdlib=no --no-entry --target elf-riscv32 static-lib main/c3/square.c3 -o lib/foo

build: c3
  idf.py build

flash: build
  idf.py flash

monitor: flash
  idf.py monitor
