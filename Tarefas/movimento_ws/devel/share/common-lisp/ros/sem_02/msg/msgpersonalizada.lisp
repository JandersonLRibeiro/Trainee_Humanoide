; Auto-generated. Do not edit!


(cl:in-package sem_02-msg)


;//! \htmlinclude msgpersonalizada.msg.html

(cl:defclass <msgpersonalizada> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (torque
    :reader torque
    :initarg :torque
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass msgpersonalizada (<msgpersonalizada>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msgpersonalizada>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msgpersonalizada)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sem_02-msg:<msgpersonalizada> is deprecated: use sem_02-msg:msgpersonalizada instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <msgpersonalizada>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sem_02-msg:id-val is deprecated.  Use sem_02-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <msgpersonalizada>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sem_02-msg:position-val is deprecated.  Use sem_02-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <msgpersonalizada>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sem_02-msg:torque-val is deprecated.  Use sem_02-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msgpersonalizada>) ostream)
  "Serializes a message object of type '<msgpersonalizada>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'torque) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msgpersonalizada>) istream)
  "Deserializes a message object of type '<msgpersonalizada>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'torque) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msgpersonalizada>)))
  "Returns string type for a message object of type '<msgpersonalizada>"
  "sem_02/msgpersonalizada")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msgpersonalizada)))
  "Returns string type for a message object of type 'msgpersonalizada"
  "sem_02/msgpersonalizada")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msgpersonalizada>)))
  "Returns md5sum for a message object of type '<msgpersonalizada>"
  "ee4115f728c0f01ff5b249b23c5266d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msgpersonalizada)))
  "Returns md5sum for a message object of type 'msgpersonalizada"
  "ee4115f728c0f01ff5b249b23c5266d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msgpersonalizada>)))
  "Returns full string definition for message of type '<msgpersonalizada>"
  (cl:format cl:nil "int32 id~%float32 position~%bool torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msgpersonalizada)))
  "Returns full string definition for message of type 'msgpersonalizada"
  (cl:format cl:nil "int32 id~%float32 position~%bool torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msgpersonalizada>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msgpersonalizada>))
  "Converts a ROS message object to a list"
  (cl:list 'msgpersonalizada
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':torque (torque msg))
))
