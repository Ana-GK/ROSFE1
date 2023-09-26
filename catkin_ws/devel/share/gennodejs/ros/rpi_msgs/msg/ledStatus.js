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

class ledStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ledNumber = null;
      this.ledStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('ledNumber')) {
        this.ledNumber = initObj.ledNumber
      }
      else {
        this.ledNumber = 0;
      }
      if (initObj.hasOwnProperty('ledStatus')) {
        this.ledStatus = initObj.ledStatus
      }
      else {
        this.ledStatus = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ledStatus
    // Serialize message field [ledNumber]
    bufferOffset = _serializer.int64(obj.ledNumber, buffer, bufferOffset);
    // Serialize message field [ledStatus]
    bufferOffset = _serializer.string(obj.ledStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ledStatus
    let len;
    let data = new ledStatus(null);
    // Deserialize message field [ledNumber]
    data.ledNumber = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ledStatus]
    data.ledStatus = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ledStatus.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rpi_msgs/ledStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae9bed52aabba7ce5ecb3ffd3198f36e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 ledNumber
    string ledStatus
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ledStatus(null);
    if (msg.ledNumber !== undefined) {
      resolved.ledNumber = msg.ledNumber;
    }
    else {
      resolved.ledNumber = 0
    }

    if (msg.ledStatus !== undefined) {
      resolved.ledStatus = msg.ledStatus;
    }
    else {
      resolved.ledStatus = ''
    }

    return resolved;
    }
};

module.exports = ledStatus;
