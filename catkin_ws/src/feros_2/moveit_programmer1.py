#!/usr/bin/env python2

import rospy
from sensor_msgs.msg import JointState
import moveit_commander
import tf2_ros
from geometry_msgs.msg import Pose
from copy import deepcopy

JOINT_NAMES = [
    'shoulder_pan_joint',
    'shoulder_lift_joint',
    'elbow_joint',
    'wrist_1_joint',
    'wrist_2_joint',
    'wrist_3_joint'
]

HOME_JOINTS = [0.0, -1.57, -1.57, 0, 0.0, 0.0]

if __name__ == '__main__':
    rospy.init_node('moveit_programmer')

    joint_pub = rospy.Publisher('/move_group/fake_controller_joint_states', JointState, queue_size=10)
    rospy.sleep(0.1)

    init_joints = JointState()
    init_joints.header.stamp = rospy.Time.now()
    init_joints.name = JOINT_NAMES
    init_joints.position = HOME_JOINTS
    joint_pub.publish(init_joints)
    rospy.sleep(0.5)
    #########################
    ##### STUDENT WRITES ####
    #########################

    moveit_interface = moveit_commander.MoveGroupCommander('manipulator')

    moveit_interface.set_max_velocity_scaling_factor(0.5)
    


    # joint_goal = moveit_interface.get_current_joint_values()
    # print('Start position:')
    # rospy.loginfo(joint_goal)

    # joint_goal[2] = - HOME_JOINTS[2]
    # print('Position 1:')
    # rospy.loginfo(joint_goal)

    # moveit_interface.go(joint_goal, wait=True)



    # joint_goal[2] = -0.5
    # print('Position 2:')
    # rospy.loginfo(joint_goal)

    # moveit_interface.go(joint_goal, wait=True)



    # joint_goal[3] = -0.8
    # print('Position 3:')
    # rospy.loginfo(joint_goal)

    # moveit_interface.go(joint_goal, wait=True)

    # Move in Cartesian space
    tf_buffer = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tf_buffer)

    # Create a static transform broadcaster object
    tf_broadcaster = tf2_ros.StaticTransformBroadcaster()

    rospy.sleep(0.5)

    current_transform = tf_buffer.lookup_transform(
        'base_link',
        'target_1',
        rospy.Time(0)
    )

#     target_transform = tf_buffer.lookup_transform(
#     'base_link',
#     'target_1',
#     rospy.Time(0)
# )

    print(current_transform.transform)
    # print(target_transform.transform)

    raw_input("Press Enter")

    pose_goal = Pose(
        position=current_transform.transform.translation, orientation=current_transform.transform.rotation)
    # pose_goal.position.z -= 0.2
    # moveit_interface.go(pose_goal, wait=True)

    # pose_goal = Pose(
    #     position=target_transform.transform.translation, orientation=target_transform.transform.rotation)
    # moveit_interface.go(pose_goal, wait=True)

    # Use the previously acquired target and add a bit of an offset on the z axis
    target_transform = deepcopy(current_transform)
    target_transform.transform.translation.z += 0.1
    target_transform.child_frame_id = 'target_offset'

    # Publish the frame and give the broadcaster some time
    tf_broadcaster.sendTransform(target_transform)
    rospy.sleep(0.5)    

    # Now lookup the transform from the robot's base to the target offset
    offset_transform = tf_buffer.lookup_transform(
        'base_link',
        'target_offset',
        rospy.Time(0)
    )

    # Convert it to pose and send it to the robot
    pose_relative = Pose(
        position=offset_transform.transform.translation, orientation=offset_transform.transform.rotation)
    moveit_interface.go(pose_goal, wait=True)
    moveit_interface.go(pose_relative, wait=True)


    #########################
