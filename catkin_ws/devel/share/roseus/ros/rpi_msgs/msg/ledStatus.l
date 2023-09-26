;; Auto-generated. Do not edit!


(when (boundp 'rpi_msgs::ledStatus)
  (if (not (find-package "RPI_MSGS"))
    (make-package "RPI_MSGS"))
  (shadow 'ledStatus (find-package "RPI_MSGS")))
(unless (find-package "RPI_MSGS::LEDSTATUS")
  (make-package "RPI_MSGS::LEDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ledStatus.msg.html


(defclass rpi_msgs::ledStatus
  :super ros::object
  :slots (_ledNumber _ledStatus ))

(defmethod rpi_msgs::ledStatus
  (:init
   (&key
    ((:ledNumber __ledNumber) 0)
    ((:ledStatus __ledStatus) "")
    )
   (send-super :init)
   (setq _ledNumber (round __ledNumber))
   (setq _ledStatus (string __ledStatus))
   self)
  (:ledNumber
   (&optional __ledNumber)
   (if __ledNumber (setq _ledNumber __ledNumber)) _ledNumber)
  (:ledStatus
   (&optional __ledStatus)
   (if __ledStatus (setq _ledStatus __ledStatus)) _ledStatus)
  (:serialization-length
   ()
   (+
    ;; int64 _ledNumber
    8
    ;; string _ledStatus
    4 (length _ledStatus)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ledNumber
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ledNumber (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ledNumber) (= (length (_ledNumber . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ledNumber . bv) 0) 0) s)
              (write-long (ash (elt (_ledNumber . bv) 1) -1) s))
             ((and (class _ledNumber) (= (length (_ledNumber . bv)) 1)) ;; big1
              (write-long (elt (_ledNumber . bv) 0) s)
              (write-long (if (>= _ledNumber 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ledNumber s)(write-long (if (>= _ledNumber 0) 0 #xffffffff) s)))
     ;; string _ledStatus
       (write-long (length _ledStatus) s) (princ _ledStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ledNumber
#+(or :alpha :irix6 :x86_64)
      (setf _ledNumber (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ledNumber (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _ledStatus
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ledStatus (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rpi_msgs::ledStatus :md5sum-) "ae9bed52aabba7ce5ecb3ffd3198f36e")
(setf (get rpi_msgs::ledStatus :datatype-) "rpi_msgs/ledStatus")
(setf (get rpi_msgs::ledStatus :definition-)
      "int64 ledNumber
string ledStatus
")



(provide :rpi_msgs/ledStatus "ae9bed52aabba7ce5ecb3ffd3198f36e")


