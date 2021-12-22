#!/usr/bin/env python3
import rospy
from sem_02.msg import msgpersonalizada
import random

pub = rospy.Publisher('robot_topic', msgpersonalizada, queue_size=10)

rospy.init_node('robot_publisher_node', anonymous=True)

rate = rospy.Rate(1)

i = 0
while not rospy.is_shutdown():
    robot = msgpersonalizada()
    robot.id = random.randrange(100)
    robot.position = random.uniform(18.2, 21)
    if robot.position < 19.5:
        robot.torque = True
    else:
        robot.torque = False
    rospy.loginfo('Robot: ')
    rospy.loginfo(robot)
    pub.publish(robot)
    rate.sleep()
    i=i+1

