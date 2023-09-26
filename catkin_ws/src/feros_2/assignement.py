#! /usr/bin/env python

import rospy
import pickle
import os
import tf2_ros
from sensor_msgs.msg import JointState

if __name__ == '__main__':

    # rospy.init_node('joint_states')

    rospy.init_node('tf_saver')
    rospy.loginfo("TF saver started!")

    tf_buffer = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tf_buffer)

    rospy.sleep(1)
    stored_data = {}

    # file_name = raw_input('Vpisi ime datoteke: ')
    file_name = 'data2'
    outfile = open(file_name + '.txt','wb')
    saved_data = {}

    from_frame = 'base_link'
    to_frame = 'tool0'

    while not rospy.is_shutdown():
        name = raw_input('Vnesi ime tocke (ali exit za izhod): ')
        if name.lower() == 'exit':
            break
        frame = tf_buffer.lookup_transform(from_frame,to_frame,rospy.Time(0))
        frame.child_frame_id = name
        joints = rospy.wait_for_message('/joint_states', JointState,rospy.Duration(1))
        saved_data[name] = [joints, frame]


    pickle.dump(saved_data, outfile)
    outfile.close()