; Auto-generated. Do not edit!


(cl:in-package movement_general-msg)


;//! \htmlinclude week_4.msg.html

(cl:defclass <week_4> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 20 :element-type 'cl:fixnum :initial-element 0))
   (pos
    :reader pos
    :initarg :pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 20 :element-type 'cl:float :initial-element 0.0))
   (vel
    :reader vel
    :initarg :vel
    :type (cl:vector cl:float)
   :initform (cl:make-array 20 :element-type 'cl:float :initial-element 0.0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 20 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass week_4 (<week_4>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <week_4>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'week_4)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name movement_general-msg:<week_4> is deprecated: use movement_general-msg:week_4 instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <week_4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement_general-msg:id-val is deprecated.  Use movement_general-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <week_4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement_general-msg:pos-val is deprecated.  Use movement_general-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <week_4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement_general-msg:vel-val is deprecated.  Use movement_general-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <week_4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement_general-msg:torque-val is deprecated.  Use movement_general-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <week_4>) ostream)
  "Serializes a message object of type '<week_4>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'id))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'vel))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <week_4>) istream)
  "Deserializes a message object of type '<week_4>"
  (cl:setf (cl:slot-value msg 'id) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i 20)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'pos) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'pos)))
    (cl:dotimes (i 20)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'vel) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'vel)))
    (cl:dotimes (i 20)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i 20)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<week_4>)))
  "Returns string type for a message object of type '<week_4>"
  "movement_general/week_4")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'week_4)))
  "Returns string type for a message object of type 'week_4"
  "movement_general/week_4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<week_4>)))
  "Returns md5sum for a message object of type '<week_4>"
  "334b4a0969d7fa87ac249362cafc44f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'week_4)))
  "Returns md5sum for a message object of type 'week_4"
  "334b4a0969d7fa87ac249362cafc44f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<week_4>)))
  "Returns full string definition for message of type '<week_4>"
  (cl:format cl:nil "int16[20] id~%float64[20] pos~%float64[20] vel~%bool[20] torque~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'week_4)))
  "Returns full string definition for message of type 'week_4"
  (cl:format cl:nil "int16[20] id~%float64[20] pos~%float64[20] vel~%bool[20] torque~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <week_4>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'vel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <week_4>))
  "Converts a ROS message object to a list"
  (cl:list 'week_4
    (cl:cons ':id (id msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':torque (torque msg))
))
