;; Auto-generated. Do not edit!


(when (boundp 'sem_02::msgpersonalizada)
  (if (not (find-package "SEM_02"))
    (make-package "SEM_02"))
  (shadow 'msgpersonalizada (find-package "SEM_02")))
(unless (find-package "SEM_02::MSGPERSONALIZADA")
  (make-package "SEM_02::MSGPERSONALIZADA"))

(in-package "ROS")
;;//! \htmlinclude msgpersonalizada.msg.html


(defclass sem_02::msgpersonalizada
  :super ros::object
  :slots (_id _position _torque ))

(defmethod sem_02::msgpersonalizada
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) 0.0)
    ((:torque __torque) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position (float __position))
   (setq _torque __torque)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:torque
   (&optional (__torque :null))
   (if (not (eq __torque :null)) (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _position
    4
    ;; bool _torque
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _torque
       (if _torque (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _torque
     (setq _torque (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sem_02::msgpersonalizada :md5sum-) "ee4115f728c0f01ff5b249b23c5266d5")
(setf (get sem_02::msgpersonalizada :datatype-) "sem_02/msgpersonalizada")
(setf (get sem_02::msgpersonalizada :definition-)
      "int32 id
float32 position
bool torque

")



(provide :sem_02/msgpersonalizada "ee4115f728c0f01ff5b249b23c5266d5")


