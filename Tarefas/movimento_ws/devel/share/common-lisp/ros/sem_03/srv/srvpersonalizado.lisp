; Auto-generated. Do not edit!


(cl:in-package sem_03-srv)


;//! \htmlinclude srvpersonalizado-request.msg.html

(cl:defclass <srvpersonalizado-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 20 :element-type 'cl:integer :initial-element 0))
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 20 :element-type 'cl:float :initial-element 0.0))
   (torque
    :reader torque
    :initarg :torque
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 20 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass srvpersonalizado-request (<srvpersonalizado-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvpersonalizado-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvpersonalizado-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sem_03-srv:<srvpersonalizado-request> is deprecated: use sem_03-srv:srvpersonalizado-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <srvpersonalizado-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sem_03-srv:id-val is deprecated.  Use sem_03-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <srvpersonalizado-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sem_03-srv:position-val is deprecated.  Use sem_03-srv:position instead.")
  (position m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <srvpersonalizado-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sem_03-srv:torque-val is deprecated.  Use sem_03-srv:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvpersonalizado-request>) ostream)
  "Serializes a message object of type '<srvpersonalizado-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'id))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'torque))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvpersonalizado-request>) istream)
  "Deserializes a message object of type '<srvpersonalizado-request>"
  (cl:setf (cl:slot-value msg 'id) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'id)))
    (cl:dotimes (i 20)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 20)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'torque) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'torque)))
    (cl:dotimes (i 20)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvpersonalizado-request>)))
  "Returns string type for a service object of type '<srvpersonalizado-request>"
  "sem_03/srvpersonalizadoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvpersonalizado-request)))
  "Returns string type for a service object of type 'srvpersonalizado-request"
  "sem_03/srvpersonalizadoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvpersonalizado-request>)))
  "Returns md5sum for a message object of type '<srvpersonalizado-request>"
  "2aeb07974f134949a54c8d91a307e998")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvpersonalizado-request)))
  "Returns md5sum for a message object of type 'srvpersonalizado-request"
  "2aeb07974f134949a54c8d91a307e998")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvpersonalizado-request>)))
  "Returns full string definition for message of type '<srvpersonalizado-request>"
  (cl:format cl:nil "int32[20] id~%float32[20] position~%bool[20] torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvpersonalizado-request)))
  "Returns full string definition for message of type 'srvpersonalizado-request"
  (cl:format cl:nil "int32[20] id~%float32[20] position~%bool[20] torque~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvpersonalizado-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'torque) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvpersonalizado-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srvpersonalizado-request
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':torque (torque msg))
))
;//! \htmlinclude srvpersonalizado-response.msg.html

(cl:defclass <srvpersonalizado-response> (roslisp-msg-protocol:ros-message)
  ((engine_off
    :reader engine_off
    :initarg :engine_off
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 20 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass srvpersonalizado-response (<srvpersonalizado-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srvpersonalizado-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srvpersonalizado-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sem_03-srv:<srvpersonalizado-response> is deprecated: use sem_03-srv:srvpersonalizado-response instead.")))

(cl:ensure-generic-function 'engine_off-val :lambda-list '(m))
(cl:defmethod engine_off-val ((m <srvpersonalizado-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sem_03-srv:engine_off-val is deprecated.  Use sem_03-srv:engine_off instead.")
  (engine_off m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srvpersonalizado-response>) ostream)
  "Serializes a message object of type '<srvpersonalizado-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'engine_off))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srvpersonalizado-response>) istream)
  "Deserializes a message object of type '<srvpersonalizado-response>"
  (cl:setf (cl:slot-value msg 'engine_off) (cl:make-array 20))
  (cl:let ((vals (cl:slot-value msg 'engine_off)))
    (cl:dotimes (i 20)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srvpersonalizado-response>)))
  "Returns string type for a service object of type '<srvpersonalizado-response>"
  "sem_03/srvpersonalizadoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvpersonalizado-response)))
  "Returns string type for a service object of type 'srvpersonalizado-response"
  "sem_03/srvpersonalizadoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srvpersonalizado-response>)))
  "Returns md5sum for a message object of type '<srvpersonalizado-response>"
  "2aeb07974f134949a54c8d91a307e998")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srvpersonalizado-response)))
  "Returns md5sum for a message object of type 'srvpersonalizado-response"
  "2aeb07974f134949a54c8d91a307e998")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srvpersonalizado-response>)))
  "Returns full string definition for message of type '<srvpersonalizado-response>"
  (cl:format cl:nil "bool[20] engine_off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srvpersonalizado-response)))
  "Returns full string definition for message of type 'srvpersonalizado-response"
  (cl:format cl:nil "bool[20] engine_off~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srvpersonalizado-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'engine_off) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srvpersonalizado-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srvpersonalizado-response
    (cl:cons ':engine_off (engine_off msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srvpersonalizado)))
  'srvpersonalizado-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srvpersonalizado)))
  'srvpersonalizado-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srvpersonalizado)))
  "Returns string type for a service object of type '<srvpersonalizado>"
  "sem_03/srvpersonalizado")