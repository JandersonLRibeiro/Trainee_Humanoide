import numpy as np
import cv2

"""
cap = cv2.VideoCapture(0)

while True:
    ret, frame = cap.read()

    cv2.imshow('frame', frame)

    if cv2.waitKey(1) == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
"""

cap = cv2.VideoCapture(0)

while(1):
    _, frame = cap.read()
    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

    lower_red= np.array([30, 150, 50])
    upper_red= np.array([255, 255, 180])

    mask = cv2.inRange(hsv, lower_red, upper_red)
    res = cv2.bitwise_and(frame, frame, mask = mask)
    res[mask > 0] = (255, 0, 0)

    cv2.imshow('frame', frame)
    cv2.imshow('res', res)

    if cv2.waitKey(1) == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
