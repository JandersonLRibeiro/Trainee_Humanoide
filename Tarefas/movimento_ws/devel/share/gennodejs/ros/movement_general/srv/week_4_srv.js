// Auto-generated. Do not edit!

// (in-package movement_general.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class week_4_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new Array(20).fill(0);
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
    // Serializes a message object of type week_4_srvRequest
    // Check that the constant length array field [id] has the right length
    if (obj.id.length !== 20) {
      throw new Error('Unable to serialize array field id - length must be 20')
    }
    // Serialize message field [id]
    bufferOffset = _arraySerializer.int16(obj.id, buffer, bufferOffset, 20);
    // Check that the constant length array field [torque] has the right length
    if (obj.torque.length !== 20) {
      throw new Error('Unable to serialize array field torque - length must be 20')
    }
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.bool(obj.torque, buffer, bufferOffset, 20);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type week_4_srvRequest
    let len;
    let data = new week_4_srvRequest(null);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.int16(buffer, bufferOffset, 20)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.bool(buffer, bufferOffset, 20)
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'movement_general/week_4_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7a63eb1d2cc579afa9e431f303eeef8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[20] id
    bool[20] torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new week_4_srvRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = new Array(20).fill(0)
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

class week_4_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.comando = null;
    }
    else {
      if (initObj.hasOwnProperty('comando')) {
        this.comando = initObj.comando
      }
      else {
        this.comando = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type week_4_srvResponse
    // Serialize message field [comando]
    bufferOffset = _serializer.string(obj.comando, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type week_4_srvResponse
    let len;
    let data = new week_4_srvResponse(null);
    // Deserialize message field [comando]
    data.comando = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.comando);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'movement_general/week_4_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20735899cef58c19fdb13abb7f9d907e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string comando
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new week_4_srvResponse(null);
    if (msg.comando !== undefined) {
      resolved.comando = msg.comando;
    }
    else {
      resolved.comando = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: week_4_srvRequest,
  Response: week_4_srvResponse,
  md5sum() { return 'd8e457fb2df342488e6b3ee3157e64a5'; },
  datatype() { return 'movement_general/week_4_srv'; }
};
