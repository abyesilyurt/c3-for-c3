
## Develop ESP32-C3 with C3-Lang

### Dependencies
- [esp-idf](https://docs.espressif.com/projects/esp-idf/en/latest/esp32c3/get-started/index.html)
- [C3 compiler - c3c](https://c3-lang.org/references/getting-started/prebuilt-binaries/)
- [just](https://github.com/casey/just)


### Setup
```bash
# configure esp-idf for esp32c3
idf.py set-target esp32c3

# build
just build

# flash
just flash

# monitor
just monitor
```