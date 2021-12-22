;; Auto-generated. Do not edit!


(when (boundp 'sem_03::srvpersonalizado)
  (if (not (find-package "SEM_03"))
    (make-package "SEM_03"))
  (shadow 'srvpersonalizado (find-package "SEM_03")))
(unless (find-package "SEM_03::SRVPERSONALIZADO")
  (make-package "SEM_03::SRVPERSONALIZADO"))
(unless (find-package "SEM_03::SRVPERSONALIZADOREQUEST")
  (make-package "SEM_03::SRVPERSONALIZADOREQUEST"))
(unless (find-package "SEM_03::SRVPERSONALIZADORESPONSE")
  (make-package "SEM_03::SRVPERSONALIZADORESPONSE"))

(in-package "ROS")





(defclass sem_03::srvpersonalizadoRequest
  :super ros::object
  :slots (_id _position _torque ))

(defmethod sem_03::srvpersonalizadoRequest
  (:init
   (&key
    ((:id __id) (make-array 20 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 20 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (let (r) (dotimes (i 20) (push nil r)) r))
    )
   (send-super :init)
   (setq _id __id)
   (setq _position __position)
   (setq _torque __torque)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; int32[20] _id
    (* 4    20)
    ;; float32[20] _position
    (* 4    20)
    ;; bool[20] _torque
    (* 1    20)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[20] _id
     (dotimes (i 20)
       (write-long (elt _id i) s)
       )
     ;; float32[20] _position
     (dotimes (i 20)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool[20] _torque
     (dotimes (i 20)
       (if (elt _torque i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[20] _id
   (dotimes (i (length _id))
     (setf (elt _id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; float32[20] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool[20] _torque
   (dotimes (i (length _torque))
     (setf (elt _torque i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(defclass sem_03::srvpersonalizadoResponse
  :super ros::object
  :slots (_engine_off ))

(defmethod sem_03::srvpersonalizadoResponse
  (:init
   (&key
    ((:engine_off __engine_off) (let (r) (dotimes (i 20) (push nil r)) r))
    )
   (send-super :init)
   (setq _engine_off __engine_off)
   self)
  (:engine_off
   (&optional __engine_off)
   (if __engine_off (setq _engine_off __engine_off)) _engine_off)
  (:serialization-length
   ()
   (+
    ;; bool[20] _engine_off
    (* 1    20)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[20] _engine_off
     (dotimes (i 20)
       (if (elt _engine_off i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[20] _engine_off
   (dotimes (i (length _engine_off))
     (setf (elt _engine_off i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(defclass sem_03::srvpersonalizado
  :super ros::object
  :slots ())

(setf (get sem_03::srvpersonalizado :md5sum-) "2aeb07974f134949a54c8d91a307e998")
(setf (get sem_03::srvpersonalizado :datatype-) "sem_03/srvpersonalizado")
(setf (get sem_03::srvpersonalizado :request) sem_03::srvpersonalizadoRequest)
(setf (get sem_03::srvpersonalizado :response) sem_03::srvpersonalizadoResponse)

(defmethod sem_03::srvpersonalizadoRequest
  (:response () (instance sem_03::srvpersonalizadoResponse :init)))

(setf (get sem_03::srvpersonalizadoRequest :md5sum-) "2aeb07974f134949a54c8d91a307e998")
(setf (get sem_03::srvpersonalizadoRequest :datatype-) "sem_03/srvpersonalizadoRequest")
(setf (get sem_03::srvpersonalizadoRequest :definition-)
      "int32[20] id
float32[20] position
bool[20] torque
---
bool[20] engine_off
")

(setf (get sem_03::srvpersonalizadoResponse :md5sum-) "2aeb07974f134949a54c8d91a307e998")
(setf (get sem_03::srvpersonalizadoResponse :datatype-) "sem_03/srvpersonalizadoResponse")
(setf (get sem_03::srvpersonalizadoResponse :definition-)
      "int32[20] id
float32[20] position
bool[20] torque
---
bool[20] engine_off
")



(provide :sem_03/srvpersonalizado "2aeb07974f134949a54c8d91a307e998")


