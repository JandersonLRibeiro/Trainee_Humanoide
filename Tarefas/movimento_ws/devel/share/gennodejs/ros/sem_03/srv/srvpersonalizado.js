// Auto-generated. Do not edit!

// (in-package sem_03.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class srvpersonalizadoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new Array(20).fill(0);
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(20).fill(0);
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
    // Serializes a message object of type srvpersonalizadoRequest
    // Check that the constant length array field [id] has the right length
    if (obj.id.length !== 20) {
      throw new Error('Unable to serialize array field id - length must be 20')
    }
    // Serialize message field [id]
    bufferOffset = _arraySerializer.int32(obj.id, buffer, bufferOffset, 20);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 20) {
      throw new Error('Unable to serialize array field position - length must be 20')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float32(obj.position, buffer, bufferOffset, 20);
    // Check that the constant length array field [torque] has the right length
    if (obj.torque.length !== 20) {
      throw new Error('Unable to serialize array field torque - length must be 20')
    }
    // Serialize message field [torque]
    bufferOffset = _arraySerializer.bool(obj.torque, buffer, bufferOffset, 20);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvpersonalizadoRequest
    let len;
    let data = new srvpersonalizadoRequest(null);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.int32(buffer, bufferOffset, 20)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float32(buffer, bufferOffset, 20)
    // Deserialize message field [torque]
    data.torque = _arrayDeserializer.bool(buffer, bufferOffset, 20)
    return data;
  }

  static getMessageSize(object) {
    return 180;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sem_03/srvpersonalizadoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34efc34b85cc7534e3dc9b2fd749c78f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[20] id
    float32[20] position
    bool[20] torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvpersonalizadoRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = new Array(20).fill(0)
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(20).fill(0)
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

class srvpersonalizadoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.engine_off = null;
    }
    else {
      if (initObj.hasOwnProperty('engine_off')) {
        this.engine_off = initObj.engine_off
      }
      else {
        this.engine_off = new Array(20).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type srvpersonalizadoResponse
    // Check that the constant length array field [engine_off] has the right length
    if (obj.engine_off.length !== 20) {
      throw new Error('Unable to serialize array field engine_off - length must be 20')
    }
    // Serialize message field [engine_off]
    bufferOffset = _arraySerializer.bool(obj.engine_off, buffer, bufferOffset, 20);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type srvpersonalizadoResponse
    let len;
    let data = new srvpersonalizadoResponse(null);
    // Deserialize message field [engine_off]
    data.engine_off = _arrayDeserializer.bool(buffer, bufferOffset, 20)
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sem_03/srvpersonalizadoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87d365418dd3239880b4b6b67e5bba53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[20] engine_off
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new srvpersonalizadoResponse(null);
    if (msg.engine_off !== undefined) {
      resolved.engine_off = msg.engine_off;
    }
    else {
      resolved.engine_off = new Array(20).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: srvpersonalizadoRequest,
  Response: srvpersonalizadoResponse,
  md5sum() { return '2aeb07974f134949a54c8d91a307e998'; },
  datatype() { return 'sem_03/srvpersonalizado'; }
};
