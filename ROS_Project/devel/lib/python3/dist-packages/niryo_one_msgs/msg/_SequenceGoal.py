# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from niryo_one_msgs/SequenceGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import niryo_one_msgs.msg

class SequenceGoal(genpy.Message):
  _md5sum = "da644ff8e5065e5598b50f9f1180dd4c"
  _type = "niryo_one_msgs/SequenceGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# goal
int32 cmd_type
int32 sequence_id
niryo_one_msgs/Sequence sequence

================================================================================
MSG: niryo_one_msgs/Sequence
int32 id
string name
string description

int32 created
int32 updated

string blockly_xml
string python_code
"""
  __slots__ = ['cmd_type','sequence_id','sequence']
  _slot_types = ['int32','int32','niryo_one_msgs/Sequence']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmd_type,sequence_id,sequence

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SequenceGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cmd_type is None:
        self.cmd_type = 0
      if self.sequence_id is None:
        self.sequence_id = 0
      if self.sequence is None:
        self.sequence = niryo_one_msgs.msg.Sequence()
    else:
      self.cmd_type = 0
      self.sequence_id = 0
      self.sequence = niryo_one_msgs.msg.Sequence()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3i().pack(_x.cmd_type, _x.sequence_id, _x.sequence.id))
      _x = self.sequence.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sequence.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i().pack(_x.sequence.created, _x.sequence.updated))
      _x = self.sequence.blockly_xml
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sequence.python_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.sequence is None:
        self.sequence = niryo_one_msgs.msg.Sequence()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.cmd_type, _x.sequence_id, _x.sequence.id,) = _get_struct_3i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sequence.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sequence.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sequence.description = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sequence.description = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.sequence.created, _x.sequence.updated,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sequence.blockly_xml = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sequence.blockly_xml = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sequence.python_code = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sequence.python_code = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3i().pack(_x.cmd_type, _x.sequence_id, _x.sequence.id))
      _x = self.sequence.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sequence.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2i().pack(_x.sequence.created, _x.sequence.updated))
      _x = self.sequence.blockly_xml
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.sequence.python_code
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.sequence is None:
        self.sequence = niryo_one_msgs.msg.Sequence()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.cmd_type, _x.sequence_id, _x.sequence.id,) = _get_struct_3i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sequence.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sequence.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sequence.description = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sequence.description = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.sequence.created, _x.sequence.updated,) = _get_struct_2i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sequence.blockly_xml = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sequence.blockly_xml = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.sequence.python_code = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.sequence.python_code = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3i = None
def _get_struct_3i():
    global _struct_3i
    if _struct_3i is None:
        _struct_3i = struct.Struct("<3i")
    return _struct_3i
