build:
  idf.py build

flash: build
  pkill -f "idf.py monitor" || true
  idf.py flash

monitor: flash
  idf.py monitor
