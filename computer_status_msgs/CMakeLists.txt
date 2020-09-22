cmake_minimum_required(VERSION 2.8.3)
project(computer_status_msgs)
find_package(catkin REQUIRED COMPONENTS message_generation std_msgs geometry_msgs)

add_message_files(
  FILES
  AccelerometerState.msg
  AccessPoint.msg
  BatteryServer.msg
  BatteryState.msg
  DashboardState.msg
  GPUStatus.msg
  PeriodicCmd.msg
  PowerBoardState.msg
  PowerState.msg
  PressureState.msg
)

add_service_files(
  FILES
  SetPeriodicCmd.srv
)

generate_messages(DEPENDENCIES geometry_msgs std_msgs)

catkin_package(CATKIN_DEPENDS std_msgs geometry_msgs message_runtime)
