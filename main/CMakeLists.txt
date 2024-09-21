idf_component_register(SRCS "hello_world_main.c"
                    INCLUDE_DIRS "")



 add_prebuilt_library(prebuilt "../lib/foo.a") 
  
 # `main` calls a function from the library, so link it to `main` 
 target_link_libraries(${COMPONENT_LIB} PRIVATE prebuilt)