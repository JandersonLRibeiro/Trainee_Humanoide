#!/usr/bin/env python3

from __future__ import print_function
import random
import rospy
from movement_general.msg import week_4
from movement_general.srv import week_4_srv, week_4_srvRequest, week_4_srvResponse

def walking_or_head_client():
    id = []
    torque = []

    for _ in range(20):
        identificacao = random.randrange(0, 101)
        id.append(identificacao)
        if identificacao > 50:
            torque.append(1)
            print(torque)
        else:
            torque.append(0)
    
    rospy.wait_for_service('walk_head')

    try:
    
        walk_head = rospy.ServiceProxy('walk_head', week_4_srv)
        resp = walk_head(id, torque)
        estado = resp.comando
        print(estado)
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)


def callback(robot):
    rospy.loginfo(robot)
    #for i in range(20):
        #rospy.loginfo('Posicao: (%.2f)', robot.pos[i])
    #rospy.loginfo('agsdgvszbfd')


if __name__ == "__main__":
    rospy.init_node('node_02', anonymous=True)
    walking_or_head_client()
    rospy.Subscriber('edrom', week_4, callback)




         

