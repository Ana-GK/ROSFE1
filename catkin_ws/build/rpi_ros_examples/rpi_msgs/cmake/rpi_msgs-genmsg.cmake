# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rpi_msgs: 8 messages, 1 services")

set(MSG_I_FLAGS "-Irpi_msgs:/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg;-Irpi_msgs:/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rpi_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg" "rpi_msgs/runningLedFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:rpi_msgs/runningLedActionFeedback:rpi_msgs/runningLedFeedback:rpi_msgs/runningLedActionGoal:rpi_msgs/runningLedGoal:rpi_msgs/runningLedResult:std_msgs/Header:rpi_msgs/runningLedActionResult"
)

get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv" ""
)

get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg" "rpi_msgs/runningLedGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg" ""
)

get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg" ""
)

get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg" "rpi_msgs/runningLedResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg" ""
)

get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg" NAME_WE)
add_custom_target(_rpi_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rpi_msgs" "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)

### Generating Services
_generate_srv_cpp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
)

### Generating Module File
_generate_module_cpp(rpi_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rpi_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rpi_msgs_generate_messages rpi_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_cpp _rpi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rpi_msgs_gencpp)
add_dependencies(rpi_msgs_gencpp rpi_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rpi_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)
_generate_msg_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)
_generate_msg_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)
_generate_msg_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)
_generate_msg_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)
_generate_msg_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)
_generate_msg_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)
_generate_msg_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)

### Generating Services
_generate_srv_eus(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
)

### Generating Module File
_generate_module_eus(rpi_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rpi_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rpi_msgs_generate_messages rpi_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_eus _rpi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rpi_msgs_geneus)
add_dependencies(rpi_msgs_geneus rpi_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rpi_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)
_generate_msg_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)

### Generating Services
_generate_srv_lisp(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
)

### Generating Module File
_generate_module_lisp(rpi_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rpi_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rpi_msgs_generate_messages rpi_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_lisp _rpi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rpi_msgs_genlisp)
add_dependencies(rpi_msgs_genlisp rpi_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rpi_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)
_generate_msg_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)
_generate_msg_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)
_generate_msg_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)
_generate_msg_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)
_generate_msg_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)
_generate_msg_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)
_generate_msg_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)

### Generating Services
_generate_srv_nodejs(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
)

### Generating Module File
_generate_module_nodejs(rpi_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rpi_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rpi_msgs_generate_messages rpi_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_nodejs _rpi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rpi_msgs_gennodejs)
add_dependencies(rpi_msgs_gennodejs rpi_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rpi_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)
_generate_msg_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)
_generate_msg_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)
_generate_msg_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)
_generate_msg_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)
_generate_msg_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)
_generate_msg_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)
_generate_msg_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)

### Generating Services
_generate_srv_py(rpi_msgs
  "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
)

### Generating Module File
_generate_module_py(rpi_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rpi_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rpi_msgs_generate_messages rpi_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedAction.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/srv/safetyZone.srv" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedGoal.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedFeedback.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedActionResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/devel/share/rpi_msgs/msg/runningLedResult.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/FEROS2023-dan0/FEROS_1/catkin_ws/src/rpi_ros_examples/rpi_msgs/msg/ledStatus.msg" NAME_WE)
add_dependencies(rpi_msgs_generate_messages_py _rpi_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rpi_msgs_genpy)
add_dependencies(rpi_msgs_genpy rpi_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rpi_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rpi_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rpi_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(rpi_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rpi_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rpi_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(rpi_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rpi_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rpi_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(rpi_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rpi_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rpi_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(rpi_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rpi_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rpi_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(rpi_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
