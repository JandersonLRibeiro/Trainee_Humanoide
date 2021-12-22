// Auto-generated. Do not edit!

// (in-package movement_general.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class week_4 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pos = null;
      this.vel = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new Array(20).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type week_4
    // Check that the constant length array field [id] has the right length
    if (obj.id.length !== 20) {
      throw new Error('Unable to serialize array field id - length must be 20')
    }
    // Serialize message field [id]
    bufferOffset = _arraySerializer.int16(obj.id, buffer, bufferOffset, 20);
    // Check that the constant length array field [pos] has the right length
    if (obj.pos.length !== 20) {
      throw new Error('Unable to serialize array field pos - length must be 20')
    }
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float64(obj.pos, buffer, bufferOffset, 20);
    // Check that the constant length array field [vel] has the right length
    if (obj.vel.length !== 20) {
      throw new Error('Unable to serialize array field vel - length must be 20')
    }
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.float64(obj.vel, buffer, bufferOffset, 20);
    // Check that the constant length array field [torque] has the right length
    if (obj.torque.length !== 20) {
      throw new Error('Unable to serialize array field torque - length must be 20')
    }
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.bool(obj.torque, buffer, bufferOffset, 20);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type week_4
    let len;
    let data = new week_4(null);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.int16(buffer, bufferOffset, 20)
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float64(buffer, bufferOffset, 20)
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.float64(buffer, bufferOffset, 20)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.bool(buffer, bufferOffset, 20)
    return data;
  }

  static getMessageSize(object) {
    return 380;
  }

  static datatype() {
    // Returns string type for a message object
    return 'movement_general/week_4';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '334b4a0969d7fa87ac249362cafc44f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[20] id
    float64[20] pos
    float64[20] vel
    bool[20] torque
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new week_4(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = new Array(20).fill(0)
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = new Array(20).fill(0)
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = new Array(20).fill(0)
    }

    if (msg.torque !== undefined) {
      resolved.torque = msg.torque;
    }
    else {
      resolved.torque = new Array(20).fill(0)
    }

    return resolved;
    }
};

module.exports = week_4;
