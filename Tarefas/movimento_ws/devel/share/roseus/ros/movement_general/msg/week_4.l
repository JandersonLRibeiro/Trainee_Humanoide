;; Auto-generated. Do not edit!


(when (boundp 'movement_general::week_4)
  (if (not (find-package "MOVEMENT_GENERAL"))
    (make-package "MOVEMENT_GENERAL"))
  (shadow 'week_4 (find-package "MOVEMENT_GENERAL")))
(unless (find-package "MOVEMENT_GENERAL::WEEK_4")
  (make-package "MOVEMENT_GENERAL::WEEK_4"))

(in-package "ROS")
;;//! \htmlinclude week_4.msg.html


(defclass movement_general::week_4
  :super ros::object
  :slots (_id _pos _vel _torque ))

(defmethod movement_general::week_4
  (:init
   (&key
    ((:id __id) (make-array 20 :initial-element 0 :element-type :integer))
    ((:pos __pos) (make-array 20 :initial-element 0.0 :element-type :float))
    ((:vel __vel) (make-array 20 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (let (r) (dotimes (i 20) (push nil r)) r))
    )
   (send-super :init)
   (setq _id __id)
   (setq _pos __pos)
   (setq _vel __vel)
   (setq _torque __torque)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; int16[20] _id
    (* 2    20)
    ;; float64[20] _pos
    (* 8    20)
    ;; float64[20] _vel
    (* 8    20)
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
     ;; float64[20] _pos
     (dotimes (i 20)
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[20] _vel
     (dotimes (i 20)
       (sys::poke (elt _vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[20] _pos
   (dotimes (i (length _pos))
     (setf (elt _pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[20] _vel
   (dotimes (i (length _vel))
     (setf (elt _vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; bool[20] _torque
   (dotimes (i (length _torque))
     (setf (elt _torque i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get movement_general::week_4 :md5sum-) "334b4a0969d7fa87ac249362cafc44f5")
(setf (get movement_general::week_4 :datatype-) "movement_general/week_4")
(setf (get movement_general::week_4 :definition-)
      "int16[20] id
float64[20] pos
float64[20] vel
bool[20] torque
")



(provide :movement_general/week_4 "334b4a0969d7fa87ac249362cafc44f5")


