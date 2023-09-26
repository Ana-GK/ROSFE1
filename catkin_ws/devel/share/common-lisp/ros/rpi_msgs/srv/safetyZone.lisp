; Auto-generated. Do not edit!


(cl:in-package rpi_msgs-srv)


;//! \htmlinclude safetyZone-request.msg.html

(cl:defclass <safetyZone-request> (roslisp-msg-protocol:ros-message)
  ((zone
    :reader zone
    :initarg :zone
    :type cl:fixnum
    :initform 0))
)

(cl:defclass safetyZone-request (<safetyZone-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <safetyZone-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'safetyZone-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rpi_msgs-srv:<safetyZone-request> is deprecated: use rpi_msgs-srv:safetyZone-request instead.")))

(cl:ensure-generic-function 'zone-val :lambda-list '(m))
(cl:defmethod zone-val ((m <safetyZone-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rpi_msgs-srv:zone-val is deprecated.  Use rpi_msgs-srv:zone instead.")
  (zone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <safetyZone-request>) ostream)
  "Serializes a message object of type '<safetyZone-request>"
  (cl:let* ((signed (cl:slot-value msg 'zone)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <safetyZone-request>) istream)
  "Deserializes a message object of type '<safetyZone-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zone) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<safetyZone-request>)))
  "Returns string type for a service object of type '<safetyZone-request>"
  "rpi_msgs/safetyZoneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'safetyZone-request)))
  "Returns string type for a service object of type 'safetyZone-request"
  "rpi_msgs/safetyZoneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<safetyZone-request>)))
  "Returns md5sum for a message object of type '<safetyZone-request>"
  "2cf7256a6a834010475f5aab98d139f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'safetyZone-request)))
  "Returns md5sum for a message object of type 'safetyZone-request"
  "2cf7256a6a834010475f5aab98d139f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<safetyZone-request>)))
  "Returns full string definition for message of type '<safetyZone-request>"
  (cl:format cl:nil "int16 zone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'safetyZone-request)))
  "Returns full string definition for message of type 'safetyZone-request"
  (cl:format cl:nil "int16 zone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <safetyZone-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <safetyZone-request>))
  "Converts a ROS message object to a list"
  (cl:list 'safetyZone-request
    (cl:cons ':zone (zone msg))
))
;//! \htmlinclude safetyZone-response.msg.html

(cl:defclass <safetyZone-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass safetyZone-response (<safetyZone-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <safetyZone-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'safetyZone-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rpi_msgs-srv:<safetyZone-response> is deprecated: use rpi_msgs-srv:safetyZone-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <safetyZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rpi_msgs-srv:success-val is deprecated.  Use rpi_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <safetyZone-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rpi_msgs-srv:message-val is deprecated.  Use rpi_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <safetyZone-response>) ostream)
  "Serializes a message object of type '<safetyZone-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <safetyZone-response>) istream)
  "Deserializes a message object of type '<safetyZone-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<safetyZone-response>)))
  "Returns string type for a service object of type '<safetyZone-response>"
  "rpi_msgs/safetyZoneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'safetyZone-response)))
  "Returns string type for a service object of type 'safetyZone-response"
  "rpi_msgs/safetyZoneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<safetyZone-response>)))
  "Returns md5sum for a message object of type '<safetyZone-response>"
  "2cf7256a6a834010475f5aab98d139f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'safetyZone-response)))
  "Returns md5sum for a message object of type 'safetyZone-response"
  "2cf7256a6a834010475f5aab98d139f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<safetyZone-response>)))
  "Returns full string definition for message of type '<safetyZone-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'safetyZone-response)))
  "Returns full string definition for message of type 'safetyZone-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <safetyZone-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <safetyZone-response>))
  "Converts a ROS message object to a list"
  (cl:list 'safetyZone-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'safetyZone)))
  'safetyZone-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'safetyZone)))
  'safetyZone-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'safetyZone)))
  "Returns string type for a service object of type '<safetyZone>"
  "rpi_msgs/safetyZone")