#!/usr/bin/env python3

import rospy
from sem_02.msg import msgpersonalizada

def robot_callback(robot_message):
    rospy.loginfo('Recebido: (%d, %.2f, %.2f)',
    robot_message.id, robot_message.position, robot_message.torque)

rospy.init_node('robot_subscriber_node', anonymous=True)

rospy.Subscriber('robot_topic', msgpersonalizada, robot_callback)

rospy.spin() # Mantém o python rodando até o node ser interrompido