; Auto-generated. Do not edit!


(cl:in-package movement_general-srv)


;//! \htmlinclude week_4_srv-request.msg.html

(cl:defclass <week_4_srv-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 20 :element-type 'cl:fixnum :initial-element 0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 20 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass week_4_srv-request (<week_4_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <week_4_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'week_4_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name movement_general-srv:<week_4_srv-request> is deprecated: use movement_general-srv:week_4_srv-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <week_4_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement_general-srv:id-val is deprecated.  Use movement_general-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <week_4_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement_general-srv:torque-val is deprecated.  Use movement_general-srv:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <week_4_srv-request>) ostream)
  "Serializes a message object of type '<week_4_srv-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'id))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <week_4_srv-request>) istream)
  "Deserializes a message object of type '<week_4_srv-request>"
  (cl:setf (cl:slot-value msg 'id) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i 20)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i 20)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<week_4_srv-request>)))
  "Returns string type for a service object of type '<week_4_srv-request>"
  "movement_general/week_4_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'week_4_srv-request)))
  "Returns string type for a service object of type 'week_4_srv-request"
  "movement_general/week_4_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<week_4_srv-request>)))
  "Returns md5sum for a message object of type '<week_4_srv-request>"
  "d8e457fb2df342488e6b3ee3157e64a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'week_4_srv-request)))
  "Returns md5sum for a message object of type 'week_4_srv-request"
  "d8e457fb2df342488e6b3ee3157e64a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<week_4_srv-request>)))
  "Returns full string definition for message of type '<week_4_srv-request>"
  (cl:format cl:nil "int16[20] id~%bool[20] torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'week_4_srv-request)))
  "Returns full string definition for message of type 'week_4_srv-request"
  (cl:format cl:nil "int16[20] id~%bool[20] torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <week_4_srv-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <week_4_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'week_4_srv-request
    (cl:cons ':id (id msg))
    (cl:cons ':torque (torque msg))
))
;//! \htmlinclude week_4_srv-response.msg.html

(cl:defclass <week_4_srv-response> (roslisp-msg-protocol:ros-message)
  ((comando
    :reader comando
    :initarg :comando
    :type cl:string
    :initform ""))
)

(cl:defclass week_4_srv-response (<week_4_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <week_4_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'week_4_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name movement_general-srv:<week_4_srv-response> is deprecated: use movement_general-srv:week_4_srv-response instead.")))

(cl:ensure-generic-function 'comando-val :lambda-list '(m))
(cl:defmethod comando-val ((m <week_4_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement_general-srv:comando-val is deprecated.  Use movement_general-srv:comando instead.")
  (comando m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <week_4_srv-response>) ostream)
  "Serializes a message object of type '<week_4_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'comando))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'comando))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <week_4_srv-response>) istream)
  "Deserializes a message object of type '<week_4_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'comando) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'comando) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<week_4_srv-response>)))
  "Returns string type for a service object of type '<week_4_srv-response>"
  "movement_general/week_4_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'week_4_srv-response)))
  "Returns string type for a service object of type 'week_4_srv-response"
  "movement_general/week_4_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<week_4_srv-response>)))
  "Returns md5sum for a message object of type '<week_4_srv-response>"
  "d8e457fb2df342488e6b3ee3157e64a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'week_4_srv-response)))
  "Returns md5sum for a message object of type 'week_4_srv-response"
  "d8e457fb2df342488e6b3ee3157e64a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<week_4_srv-response>)))
  "Returns full string definition for message of type '<week_4_srv-response>"
  (cl:format cl:nil "string comando~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'week_4_srv-response)))
  "Returns full string definition for message of type 'week_4_srv-response"
  (cl:format cl:nil "string comando~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <week_4_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'comando))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <week_4_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'week_4_srv-response
    (cl:cons ':comando (comando msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'week_4_srv)))
  'week_4_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'week_4_srv)))
  'week_4_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'week_4_srv)))
  "Returns string type for a service object of type '<week_4_srv>"
  "movement_general/week_4_srv")