# This message communicates the state of a battery server, which controls
# multiple batteries.
# This is copied from BatteryServer2.msg and renamed. See https://github.com/PR2/pr2_common/issues/286#issuecomment-695975839
Header header
int32 MAX_BAT_COUNT=4
int32 MAX_BAT_REG=48
int32 id  # unique ID for each battery server
# Battery System Stats
time last_system_update  # last time the system stats where updated
duration time_left       # in seconds (hardware resolution is 1 minute)
int32 average_charge     # in percent
string message           # message from the ocean server
time last_controller_update # last time a battery status flag was updated
# for each battery
computer_status_msgs/BatteryState[] battery
