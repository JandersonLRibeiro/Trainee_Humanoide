#!/usr/bin/env python3

from __future__ import print_function

import rospy
from sem_03.srv import srvpersonalizado, srvpersonalizadoResponse

def turn_off_engine(off):
    turn_off = srvpersonalizadoResponse()
    turn_off.engine_off = list(map(lambda x: 0, range(20)))
    return turn_off
    
def turn_off_engine_server():
    rospy.init_node('turn_off_engine_server')
    s = rospy.Service('turn_off', srvpersonalizado, turn_off_engine)
    print('Pronto para desligar o motor...')
    rospy.spin()

if __name__ == '__main__':
    turn_off_engine_server()
