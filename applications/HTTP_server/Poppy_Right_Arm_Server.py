# -*- coding: utf-8 -*-  #Python Scripts in Unicode

# Import all the required libraries
from poppy.creatures import PoppyRightArm
from pypot.server.httpserver import HTTPRobotServer
from threading import Thread

option = raw_input("Press 1 pour se connecter au Poppy : ")

HOST = '127.0.0.1'		 # local host where the arm is connected
PORT = 3030              # Arbitrary non-privileged port

if option=='1':
    poppy = PoppyRightArm() # Connection to Poppy_Right_Arm
print ('Connection reussi avec POPPY HUMANOID') 
#power up of all the motors
poppy.compliant = False
poppy.power_up()
# Change PID of Dynamixel motors
for m in filter(lambda m: hasattr(m, 'pid'), poppy.motors):
    m.pid = (1.9, 5, 0)
# Change PID of XL-320 motors
for m in poppy.r_gripper:
    m.pid = (4, 2, 0)
# Change PID of Gripper (r_m5)
poppy.r_m5.pid=(8,0,0)
# Reduce max torque to keep motor temperature low
for m in poppy.motors:
    m.torque_limit = 70

time.sleep(0.5)
# Initialize the angles of the motors
poppy.r_shoulder_x.goal_position =-20
poppy.r_m1.goal_position =0
poppy.r_m4.goal_position =90
# Configuration of HTTP server
server = HTTPRobotServer(poppy,host=HOST, port=PORT)
Thread(target=lambda: server.run(quiet=True, server='wsgiref')).start()

print 'HTTP Robot server initialized ...'








