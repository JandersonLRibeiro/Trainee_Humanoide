import cv2
import numpy as np

cap = cv2.VideoCapture(2, cv2.CAP_V4L2)
cap.set(3, 320)
cap.set(4, 240)
cap.set(10, 100)

def empty(nothing):
    pass

cv2.namedWindow('HSV') # Criação das Trackbar para mudar os parâmetros HSV da captura de tela
cv2.resizeWindow('HSV', 320, 120)
cv2.createTrackbar('HUE Min', 'HSV', 0, 179, empty)
cv2.createTrackbar('HUE Max', 'HSV', 179, 179, empty)
cv2.createTrackbar('SAT Min', 'HSV', 0, 255, empty)
cv2.createTrackbar('SAT Max', 'HSV', 255, 255, empty)
cv2.createTrackbar('VALUE Min', 'HSV', 0, 255, empty)
cv2.createTrackbar('VALUE Max', 'HSV', 255, 255, empty)

while True:
    _, img = cap.read()
    img_hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV) # Muda a cor de RGB para HSV. Faz isso porque é mais fácil trabalhar com HSV

    h_min = cv2.getTrackbarPos('HUE Min', 'HSV') # Pega os valores quando alteramos o HUE
    h_max = cv2.getTrackbarPos('HUE Max', 'HSV') # SAT e VALUE, mas não faz nenhuma alteração
    s_min = cv2.getTrackbarPos('SAT Min', 'HSV') # na imagem. Dentro do while esses valores serão
    s_max = cv2.getTrackbarPos('SAT Max', 'HSV') # mostrados instantâneamente se dermos um print em
    v_min = cv2.getTrackbarPos('VALUE Min', 'HSV') # h_min, h_max ...
    v_max = cv2.getTrackbarPos('VALUE Max', 'HSV')

    lower = np.array([h_min, s_min, v_min])
    upper = np.array([h_max, s_max, v_max])

    mask = cv2.inRange(img_hsv, lower, upper) # Criação da maskara. Aqui quando alteramos as posições da Trackbar img_hsv é alterada e de acordo com as alterações que fazemos a maskara é criada.
    result = cv2.bitwise_and(img, img, mask = mask) 
    
    mask = cv2.cvtColor(mask, cv2.COLOR_GRAY2BGR)
    hstack = np.hstack([img, mask, result])
    """
    cv2.imshow('Original', img)
    cv2.imshow('HSV Color Space', img_hsv)
    cv2.imshow('Mask', mask)
    cv2.imshow('Result', result)
    """
    cv2.imshow('Horizontal Stacking', hstack)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

    