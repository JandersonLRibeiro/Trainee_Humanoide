#!/usr/bin/env python3

#from __future__ import print_function

import rospy
from sem_03.srv import srvpersonalizado, srvpersonalizadoResponse, srvpersonalizadoRequest
import random
import sys

def turn_off_engine_client():

    id = []
    position = []
    torque = []
    
    for _ in range(20):
        identificacao = random.randrange(100)
        id.append(identificacao)

    position = list(map(lambda x: 1, range(20)))
    torque = list(map(lambda x: True, range(20)))
    
    rospy.wait_for_service('turn_off')
    
    try:
        for i in range(20):
            print(f'ID: {id[i]} | Posicao: {position[i]} | Torque: {torque[i]}')
        turn_off = rospy.ServiceProxy('turn_off', srvpersonalizado)
        resp = turn_off(id, position, torque)
        torque = resp.engine_off
        for i in range(20):
            print(f'ID: {id[i]} | Posicao: {position[i]} | Torque: {torque[i]}')
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)
   
if __name__ == "__main__":
    turn_off_engine_client()
       