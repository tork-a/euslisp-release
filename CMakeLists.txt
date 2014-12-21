# http://ros.org/doc/groovy/api/catkin/html/user_guide/supposed.html
cmake_minimum_required(VERSION 2.8.3)
project(euslisp)

find_package(catkin)

# check arch and os
execute_process(COMMAND bash -c "gcc -dumpmachine" OUTPUT_VARIABLE gcc_dump_machine OUTPUT_STRIP_TRAILING_WHITESPACE)
message("-- gcc dumpmachine returns ${gcc_dump_machine}")
if(gcc_dump_machine MATCHES "x86_64-*")
  set(ARCHDIR "Linux64")
  set(MAKEFILE "Makefile.Linux64")
elseif(gcc_dump_machine MATCHES "i686-*")
  set(ARCHDIR "Linux")
  set(MAKEFILE "Makefile.Linux.thread")
elseif(gcc_dump_machine MATCHES "arm*-*")
  set(ARCHDIR "LinuxARM")
  set(MAKEFILE "Makefile.LinuxARM")
elseif(gcc_dump_machine MATCHES "cygwin*-*")
  set(ARCHDIR "Cygwin")
  set(MAKEFILE "Makefile.Cygwin")
elseif(gcc_dump_machine MATCHES "darwin*-*")
  set(ARCHDIR "Darwin")
  set(MAKEFILE "Makefile.Darwin")
else()
  message(FATAL_ERROR "-- -- This machine is not supported")
endif()

# build euslisp
add_custom_command(OUTPUT ${PROJECT_SOURCE_DIR}/lisp/Makefile
  COMMAND cmake -E create_symlink ${MAKEFILE} Makefile
  WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/lisp/)
add_custom_target(compile_euslisp ALL
  DEPENDS ${PROJECT_SOURCE_DIR}/lisp/Makefile
  COMMAND export EUSDIR=${PROJECT_SOURCE_DIR} lt_cv_sys_lib_dlsearch_path_spec=${lt_cv_sys_lib_dlsearch_path_spec} && \$\(MAKE\) -C ${PROJECT_SOURCE_DIR}/lisp -f Makefile)

add_custom_target(install_euslisp
  COMMAND export EUSDIR=${PROJECT_SOURCE_DIR} lt_cv_sys_lib_dlsearch_path_spec=${lt_cv_sys_lib_dlsearch_path_spec} && ${CMAKE_COMMAND} -E make_directory \${DESTDIR}${CMAKE_INSTALL_PREFIX}/bin && \$\(MAKE\) -C ${PROJECT_SOURCE_DIR}/lisp -f Makefile install PUBBINDIR=\${DESTDIR}${CMAKE_INSTALL_PREFIX}/bin)

install(CODE "execute_process(COMMAND ${CMAKE_COMMAND} --build . --target install_euslisp)")
install(DIRECTORY contrib doc lib lisp models ${ARCHDIR}
  DESTINATION share/euslisp/
  USE_SOURCE_PERMISSIONS)
install(FILES package.xml DESTINATION share/euslisp/)
install(CODE "execute_process(COMMAND ${CMAKE_COMMAND} -E create_symlink lisp/c include WORKING_DIRECTORY \$ENV{DESTDIR}\${CMAKE_INSTALL_PREFIX}/share/euslisp/)")

catkin_package(CFG_EXTRAS euslisp-extras.cmake)
catkin_add_env_hooks(99.euslisp SHELLS sh DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/env-hooks)
