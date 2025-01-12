// Generated by gencpp from file moveit_msgs/SaveMapResponse.msg
// DO NOT EDIT!


#ifndef MOVEIT_MSGS_MESSAGE_SAVEMAPRESPONSE_H
#define MOVEIT_MSGS_MESSAGE_SAVEMAPRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace moveit_msgs
{
template <class ContainerAllocator>
struct SaveMapResponse_
{
  typedef SaveMapResponse_<ContainerAllocator> Type;

  SaveMapResponse_()
    : success(false)  {
    }
  SaveMapResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SaveMapResponse_

typedef ::moveit_msgs::SaveMapResponse_<std::allocator<void> > SaveMapResponse;

typedef boost::shared_ptr< ::moveit_msgs::SaveMapResponse > SaveMapResponsePtr;
typedef boost::shared_ptr< ::moveit_msgs::SaveMapResponse const> SaveMapResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_msgs::SaveMapResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::moveit_msgs::SaveMapResponse_<ContainerAllocator1> & lhs, const ::moveit_msgs::SaveMapResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::moveit_msgs::SaveMapResponse_<ContainerAllocator1> & lhs, const ::moveit_msgs::SaveMapResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace moveit_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::moveit_msgs::SaveMapResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_msgs/SaveMapResponse";
  }

  static const char* value(const ::moveit_msgs::SaveMapResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"bool success\n"
"\n"
"\n"
"\n"
;
  }

  static const char* value(const ::moveit_msgs::SaveMapResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveMapResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_msgs::SaveMapResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_msgs::SaveMapResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_MSGS_MESSAGE_SAVEMAPRESPONSE_H
