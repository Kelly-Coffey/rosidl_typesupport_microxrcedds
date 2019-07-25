// generated from rosidl_typesupport_microxrcedds_cpp/resource/idl__type_support.cpp.em
// with input from @(package_name):@(interface_path)
// generated code does not contain a copyright notice
@
@#######################################################################
@# EmPy template for generating <idl>__type_support.cpp files
@#
@# Context:
@#  - package_name (string)
@#  - interface_path (Path relative to the directory named after the package)
@#  - content (IdlContent, list of elements, e.g. Messages or Services)
@#######################################################################
@
@{
from rosidl_cmake import convert_camel_case_to_lower_case_underscore
include_parts = [package_name] + list(interface_path.parents[0].parts) + \
    [convert_camel_case_to_lower_case_underscore(interface_path.stem)]
include_base = '/'.join(include_parts)
}@
#include "@(include_base)__rosidl_typesupport_microxrcedds_cpp.hpp"
#include "@(include_base)__struct.hpp"

@{
include_directives = set()

#######################################################################
# Handle message
#######################################################################
from rosidl_parser.definition import Message
for message in content.get_elements_of_type(Message):
    TEMPLATE(
        'msg__type_support_cpp.cpp.em',
        package_name=package_name,
        interface_path=interface_path,
        message=message,
        include_directives=include_directives)
}@