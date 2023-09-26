; Auto-generated. Do not edit!


(cl:in-package rpi_msgs-msg)


;//! \htmlinclude ledStatus.msg.html

(cl:defclass <ledStatus> (roslisp-msg-protocol:ros-message)
  ((ledNumber
    :reader ledNumber
    :initarg :ledNumber
    :type cl:integer
    :initform 0)
   (ledStatus
    :reader ledStatus
    :initarg :ledStatus
    :type cl:string
    :initform ""))
)

(cl:defclass ledStatus (<ledStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ledStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ledStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rpi_msgs-msg:<ledStatus> is deprecated: use rpi_msgs-msg:ledStatus instead.")))

(cl:ensure-generic-function 'ledNumber-val :lambda-list '(m))
(cl:defmethod ledNumber-val ((m <ledStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rpi_msgs-msg:ledNumber-val is deprecated.  Use rpi_msgs-msg:ledNumber instead.")
  (ledNumber m))

(cl:ensure-generic-function 'ledStatus-val :lambda-list '(m))
(cl:defmethod ledStatus-val ((m <ledStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rpi_msgs-msg:ledStatus-val is deprecated.  Use rpi_msgs-msg:ledStatus instead.")
  (ledStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ledStatus>) ostream)
  "Serializes a message object of type '<ledStatus>"
  (cl:let* ((signed (cl:slot-value msg 'ledNumber)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ledStatus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ledStatus))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ledStatus>) istream)
  "Deserializes a message object of type '<ledStatus>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ledNumber) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ledStatus) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ledStatus) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ledStatus>)))
  "Returns string type for a message object of type '<ledStatus>"
  "rpi_msgs/ledStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ledStatus)))
  "Returns string type for a message object of type 'ledStatus"
  "rpi_msgs/ledStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ledStatus>)))
  "Returns md5sum for a message object of type '<ledStatus>"
  "ae9bed52aabba7ce5ecb3ffd3198f36e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ledStatus)))
  "Returns md5sum for a message object of type 'ledStatus"
  "ae9bed52aabba7ce5ecb3ffd3198f36e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ledStatus>)))
  "Returns full string definition for message of type '<ledStatus>"
  (cl:format cl:nil "int64 ledNumber~%string ledStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ledStatus)))
  "Returns full string definition for message of type 'ledStatus"
  (cl:format cl:nil "int64 ledNumber~%string ledStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ledStatus>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'ledStatus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ledStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ledStatus
    (cl:cons ':ledNumber (ledNumber msg))
    (cl:cons ':ledStatus (ledStatus msg))
))
