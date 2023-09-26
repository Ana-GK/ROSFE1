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

    moveit_interface.set_max_velocity_scaling_factor(0.3)

    # Move in Cartesian space
    tf_buffer = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tf_buffer)

    # Create a static transform broadcaster object
    tf_broadcaster = tf2_ros.StaticTransformBroadcaster()

    rospy.sleep(0.5)

    current_transform = tf_buffer.lookup_transform(
        'base_link',
        'object',
        rospy.Time(0)
    )

    print(current_transform.transform)

    raw_input("Press Enter")

    pose_goal = Pose(
        position=current_transform.transform.translation, orientation=current_transform.transform.rotation)

    # Use the previously acquired target and add a bit of an offset on the z axis
    target_transform1 = deepcopy(current_transform)
    target_transform1.transform.translation.z += 0.15
    target_transform1.child_frame_id = 'target_offset15'
    tf_broadcaster.sendTransform(target_transform1)
    rospy.sleep(0.5)
    offset_transform1 = tf_buffer.lookup_transform(
        'base_link',
        'target_offset15',
        rospy.Time(0)
    )
    # Convert it to pose and send it to the robot
    pose_relative1 = Pose(
        position=offset_transform1.transform.translation, orientation=offset_transform1.transform.rotation)

    target_transform2 = deepcopy(current_transform)
    target_transform2.transform.translation.z += 0.2
    target_transform2.child_frame_id = 'target_offset20'
    tf_broadcaster.sendTransform(target_transform2)
    rospy.sleep(0.5)
    offset_transform2 = tf_buffer.lookup_transform(
        'base_link',
        'target_offset20',
        rospy.Time(0)
    )

    # Convert it to pose and send it to the robot
    pose_relative2 = Pose(
        position=offset_transform2.transform.translation, orientation=offset_transform2.transform.rotation)


    moveit_interface.go(pose_relative1, wait=True)
    moveit_interface.go(pose_goal, wait=True)
    moveit_interface.go(pose_relative2, wait=True)

    moveit_interface.go(init_joints, wait=True)


    #########################
