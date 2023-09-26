;; Auto-generated. Do not edit!


(when (boundp 'rpi_msgs::safetyZone)
  (if (not (find-package "RPI_MSGS"))
    (make-package "RPI_MSGS"))
  (shadow 'safetyZone (find-package "RPI_MSGS")))
(unless (find-package "RPI_MSGS::SAFETYZONE")
  (make-package "RPI_MSGS::SAFETYZONE"))
(unless (find-package "RPI_MSGS::SAFETYZONEREQUEST")
  (make-package "RPI_MSGS::SAFETYZONEREQUEST"))
(unless (find-package "RPI_MSGS::SAFETYZONERESPONSE")
  (make-package "RPI_MSGS::SAFETYZONERESPONSE"))

(in-package "ROS")





(defclass rpi_msgs::safetyZoneRequest
  :super ros::object
  :slots (_zone ))

(defmethod rpi_msgs::safetyZoneRequest
  (:init
   (&key
    ((:zone __zone) 0)
    )
   (send-super :init)
   (setq _zone (round __zone))
   self)
  (:zone
   (&optional __zone)
   (if __zone (setq _zone __zone)) _zone)
  (:serialization-length
   ()
   (+
    ;; int16 _zone
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _zone
       (write-word _zone s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _zone
     (setq _zone (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass rpi_msgs::safetyZoneResponse
  :super ros::object
  :slots (_success _message ))

(defmethod rpi_msgs::safetyZoneResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rpi_msgs::safetyZone
  :super ros::object
  :slots ())

(setf (get rpi_msgs::safetyZone :md5sum-) "2cf7256a6a834010475f5aab98d139f1")
(setf (get rpi_msgs::safetyZone :datatype-) "rpi_msgs/safetyZone")
(setf (get rpi_msgs::safetyZone :request) rpi_msgs::safetyZoneRequest)
(setf (get rpi_msgs::safetyZone :response) rpi_msgs::safetyZoneResponse)

(defmethod rpi_msgs::safetyZoneRequest
  (:response () (instance rpi_msgs::safetyZoneResponse :init)))

(setf (get rpi_msgs::safetyZoneRequest :md5sum-) "2cf7256a6a834010475f5aab98d139f1")
(setf (get rpi_msgs::safetyZoneRequest :datatype-) "rpi_msgs/safetyZoneRequest")
(setf (get rpi_msgs::safetyZoneRequest :definition-)
      "int16 zone
---
bool success
string message
")

(setf (get rpi_msgs::safetyZoneResponse :md5sum-) "2cf7256a6a834010475f5aab98d139f1")
(setf (get rpi_msgs::safetyZoneResponse :datatype-) "rpi_msgs/safetyZoneResponse")
(setf (get rpi_msgs::safetyZoneResponse :definition-)
      "int16 zone
---
bool success
string message
")



(provide :rpi_msgs/safetyZone "2cf7256a6a834010475f5aab98d139f1")


