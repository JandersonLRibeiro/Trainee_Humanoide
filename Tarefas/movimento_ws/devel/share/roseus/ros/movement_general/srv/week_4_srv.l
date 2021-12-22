;; Auto-generated. Do not edit!


(when (boundp 'movement_general::week_4_srv)
  (if (not (find-package "MOVEMENT_GENERAL"))
    (make-package "MOVEMENT_GENERAL"))
  (shadow 'week_4_srv (find-package "MOVEMENT_GENERAL")))
(unless (find-package "MOVEMENT_GENERAL::WEEK_4_SRV")
  (make-package "MOVEMENT_GENERAL::WEEK_4_SRV"))
(unless (find-package "MOVEMENT_GENERAL::WEEK_4_SRVREQUEST")
  (make-package "MOVEMENT_GENERAL::WEEK_4_SRVREQUEST"))
(unless (find-package "MOVEMENT_GENERAL::WEEK_4_SRVRESPONSE")
  (make-package "MOVEMENT_GENERAL::WEEK_4_SRVRESPONSE"))

(in-package "ROS")





(defclass movement_general::week_4_srvRequest
  :super ros::object
  :slots (_id _torque ))

(defmethod movement_general::week_4_srvRequest
  (:init
   (&key
    ((:id __id) (make-array 20 :initial-element 0 :element-type :integer))
    ((:torque __torque) (let (r) (dotimes (i 20) (push nil r)) r))
    )
   (send-super :init)
   (setq _id __id)
   (setq _torque __torque)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; int16[20] _id
    (* 2    20)
    ;; bool[20] _torque
    (* 1    20)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16[20] _id
     (dotimes (i 20)
       (write-word (elt _id i) s)
       )
     ;; bool[20] _torque
     (dotimes (i 20)
       (if (elt _torque i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16[20] _id
   (dotimes (i (length _id))
     (setf (elt _id i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;; bool[20] _torque
   (dotimes (i (length _torque))
     (setf (elt _torque i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(defclass movement_general::week_4_srvResponse
  :super ros::object
  :slots (_comando ))

(defmethod movement_general::week_4_srvResponse
  (:init
   (&key
    ((:comando __comando) "")
    )
   (send-super :init)
   (setq _comando (string __comando))
   self)
  (:comando
   (&optional __comando)
   (if __comando (setq _comando __comando)) _comando)
  (:serialization-length
   ()
   (+
    ;; string _comando
    4 (length _comando)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _comando
       (write-long (length _comando) s) (princ _comando s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _comando
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _comando (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass movement_general::week_4_srv
  :super ros::object
  :slots ())

(setf (get movement_general::week_4_srv :md5sum-) "d8e457fb2df342488e6b3ee3157e64a5")
(setf (get movement_general::week_4_srv :datatype-) "movement_general/week_4_srv")
(setf (get movement_general::week_4_srv :request) movement_general::week_4_srvRequest)
(setf (get movement_general::week_4_srv :response) movement_general::week_4_srvResponse)

(defmethod movement_general::week_4_srvRequest
  (:response () (instance movement_general::week_4_srvResponse :init)))

(setf (get movement_general::week_4_srvRequest :md5sum-) "d8e457fb2df342488e6b3ee3157e64a5")
(setf (get movement_general::week_4_srvRequest :datatype-) "movement_general/week_4_srvRequest")
(setf (get movement_general::week_4_srvRequest :definition-)
      "int16[20] id
bool[20] torque
---
string comando
")

(setf (get movement_general::week_4_srvResponse :md5sum-) "d8e457fb2df342488e6b3ee3157e64a5")
(setf (get movement_general::week_4_srvResponse :datatype-) "movement_general/week_4_srvResponse")
(setf (get movement_general::week_4_srvResponse :definition-)
      "int16[20] id
bool[20] torque
---
string comando
")



(provide :movement_general/week_4_srv "d8e457fb2df342488e6b3ee3157e64a5")


