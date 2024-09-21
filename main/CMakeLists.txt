register_component()

add_custom_command(
    OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/main.a
    COMMAND c3c --use-stdlib=yes --no-entry --target elf-riscv32 static-lib ${CMAKE_CURRENT_SOURCE_DIR}/main.c3 -o ${CMAKE_CURRENT_BINARY_DIR}/main -O3 -g0
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/main.c3
    COMMENT "Building main.a"
)


# Create a custom target that depends on the output of the custom command
add_custom_target(main_a_target DEPENDS ${CMAKE_CURRENT_BINARY_DIR}/main.a)

# Ensure the component target depends on the custom target
add_dependencies(${COMPONENT_TARGET} main_a_target)

target_link_libraries(${COMPONENT_TARGET} INTERFACE ${CMAKE_CURRENT_BINARY_DIR}/main.a)
