#!/usr/bin/env python3

import rospy
from movement_general.msg import week_4
import random
from movement_general.srv import week_4_srv, week_4_srvRequest, week_4_srvResponse

def walking_or_head_service(mov):

    count = 0
    walk_or_head = week_4_srvResponse()
    
    for i in range(20):
        if mov:
            count = count + 1
        if count >= 9:
            walk_or_head.comando = 'Walking'
        else:
            walk_or_head.comando = 'Head'
    print(mov.torque)

    return walk_or_head

def walking_or_head_server():
    rospy.init_node('node_01')
    print('O robo esta...')
    #pub = rospy.Publisher('edrom', week_4, queue_size=10)
    s = rospy.Service('walk_head', week_4_srv, walking_or_head_service)
    rospy.spin()

if __name__ == '__main__':
    walking_or_head_server()


#data = week_4()
""""
while not rospy.is_shutdown():
    for i in range(20):
        data.pos[i] = random.uniform(1.0, 5.0)
    rospy.loginfo(data)
    pub.publish(data)
"""



