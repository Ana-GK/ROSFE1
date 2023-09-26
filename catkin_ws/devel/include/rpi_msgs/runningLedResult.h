// Generated by gencpp from file rpi_msgs/runningLedResult.msg
// DO NOT EDIT!


#ifndef RPI_MSGS_MESSAGE_RUNNINGLEDRESULT_H
#define RPI_MSGS_MESSAGE_RUNNINGLEDRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rpi_msgs
{
template <class ContainerAllocator>
struct runningLedResult_
{
  typedef runningLedResult_<ContainerAllocator> Type;

  runningLedResult_()
    : finalRun(0)  {
    }
  runningLedResult_(const ContainerAllocator& _alloc)
    : finalRun(0)  {
  (void)_alloc;
    }



   typedef int16_t _finalRun_type;
  _finalRun_type finalRun;





  typedef boost::shared_ptr< ::rpi_msgs::runningLedResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rpi_msgs::runningLedResult_<ContainerAllocator> const> ConstPtr;

}; // struct runningLedResult_

typedef ::rpi_msgs::runningLedResult_<std::allocator<void> > runningLedResult;

typedef boost::shared_ptr< ::rpi_msgs::runningLedResult > runningLedResultPtr;
typedef boost::shared_ptr< ::rpi_msgs::runningLedResult const> runningLedResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rpi_msgs::runningLedResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rpi_msgs::runningLedResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rpi_msgs::runningLedResult_<ContainerAllocator1> & lhs, const ::rpi_msgs::runningLedResult_<ContainerAllocator2> & rhs)
{
  return lhs.finalRun == rhs.finalRun;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rpi_msgs::runningLedResult_<ContainerAllocator1> & lhs, const ::rpi_msgs::runningLedResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rpi_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rpi_msgs::runningLedResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rpi_msgs::runningLedResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rpi_msgs::runningLedResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rpi_msgs::runningLedResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rpi_msgs::runningLedResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rpi_msgs::runningLedResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rpi_msgs::runningLedResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ccad0b1b58e144a35bb45588be3a81e";
  }

  static const char* value(const ::rpi_msgs::runningLedResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ccad0b1b58e144aULL;
  static const uint64_t static_value2 = 0x35bb45588be3a81eULL;
};

template<class ContainerAllocator>
struct DataType< ::rpi_msgs::runningLedResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rpi_msgs/runningLedResult";
  }

  static const char* value(const ::rpi_msgs::runningLedResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rpi_msgs::runningLedResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# result\n"
"int16 finalRun\n"
;
  }

  static const char* value(const ::rpi_msgs::runningLedResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rpi_msgs::runningLedResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.finalRun);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct runningLedResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rpi_msgs::runningLedResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rpi_msgs::runningLedResult_<ContainerAllocator>& v)
  {
    s << indent << "finalRun: ";
    Printer<int16_t>::stream(s, indent + "  ", v.finalRun);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RPI_MSGS_MESSAGE_RUNNINGLEDRESULT_H
