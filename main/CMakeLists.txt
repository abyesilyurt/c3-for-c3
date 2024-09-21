register_component()

add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/main.a
    COMMAND c3c --use-stdlib=yes --no-entry --target elf-riscv32 static-lib ${CMAKE_CURRENT_SOURCE_DIR}/main.c3 -o ${CMAKE_CURRENT_BINARY_DIR}/main -O3 -g0
    COMMENT "Building main.a"
)


target_link_libraries(${COMPONENT_TARGET} INTERFACE ${CMAKE_CURRENT_BINARY_DIR}/main.a)
