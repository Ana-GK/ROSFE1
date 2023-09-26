// Auto-generated. Do not edit!

// (in-package rpi_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class runningLedResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.finalRun = null;
    }
    else {
      if (initObj.hasOwnProperty('finalRun')) {
        this.finalRun = initObj.finalRun
      }
      else {
        this.finalRun = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type runningLedResult
    // Serialize message field [finalRun]
    bufferOffset = _serializer.int16(obj.finalRun, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type runningLedResult
    let len;
    let data = new runningLedResult(null);
    // Deserialize message field [finalRun]
    data.finalRun = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rpi_msgs/runningLedResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ccad0b1b58e144a35bb45588be3a81e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # result
    int16 finalRun
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new runningLedResult(null);
    if (msg.finalRun !== undefined) {
      resolved.finalRun = msg.finalRun;
    }
    else {
      resolved.finalRun = 0
    }

    return resolved;
    }
};

module.exports = runningLedResult;
