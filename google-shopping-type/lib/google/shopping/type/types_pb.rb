# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/type/types.proto

require 'google/protobuf'


descriptor_data = "\n google/shopping/type/types.proto\x12\x14google.shopping.type\"c\n\x05Price\x12\x1a\n\ramount_micros\x18\x01 \x01(\x03H\x00\x88\x01\x01\x12\x1a\n\rcurrency_code\x18\x02 \x01(\tH\x01\x88\x01\x01\x42\x10\n\x0e_amount_microsB\x10\n\x0e_currency_code\"\x88\x01\n\x0f\x43ustomAttribute\x12\x11\n\x04name\x18\x01 \x01(\tH\x00\x88\x01\x01\x12\x12\n\x05value\x18\x02 \x01(\tH\x01\x88\x01\x01\x12;\n\x0cgroup_values\x18\x03 \x03(\x0b\x32%.google.shopping.type.CustomAttributeB\x07\n\x05_nameB\x08\n\x06_value\"\xc1\x01\n\x0b\x44\x65stination\"\xb1\x01\n\x0f\x44\x65stinationEnum\x12 \n\x1c\x44\x45STINATION_ENUM_UNSPECIFIED\x10\x00\x12\x10\n\x0cSHOPPING_ADS\x10\x01\x12\x0f\n\x0b\x44ISPLAY_ADS\x10\x02\x12\x17\n\x13LOCAL_INVENTORY_ADS\x10\x03\x12\x11\n\rFREE_LISTINGS\x10\x04\x12\x17\n\x13\x46REE_LOCAL_LISTINGS\x10\x05\x12\x14\n\x10YOUTUBE_SHOPPING\x10\x06\"\xd9\x02\n\x10ReportingContext\"\xc4\x02\n\x14ReportingContextEnum\x12&\n\"REPORTING_CONTEXT_ENUM_UNSPECIFIED\x10\x00\x12\x10\n\x0cSHOPPING_ADS\x10\x01\x12\x11\n\rDISCOVERY_ADS\x10\x02\x12\r\n\tVIDEO_ADS\x10\x03\x12\x0f\n\x0b\x44ISPLAY_ADS\x10\x04\x12\x17\n\x13LOCAL_INVENTORY_ADS\x10\x05\x12\x19\n\x15VEHICLE_INVENTORY_ADS\x10\x06\x12\x11\n\rFREE_LISTINGS\x10\x07\x12\x17\n\x13\x46REE_LOCAL_LISTINGS\x10\x08\x12\x1f\n\x1b\x46REE_LOCAL_VEHICLE_LISTINGS\x10\t\x12\x14\n\x10YOUTUBE_SHOPPING\x10\n\x12\x10\n\x0c\x43LOUD_RETAIL\x10\x0b\x12\x16\n\x12LOCAL_CLOUD_RETAIL\x10\x0c\"M\n\x07\x43hannel\"B\n\x0b\x43hannelEnum\x12\x1c\n\x18\x43HANNEL_ENUM_UNSPECIFIED\x10\x00\x12\n\n\x06ONLINE\x10\x01\x12\t\n\x05LOCAL\x10\x02\x42p\n\x18\x63om.google.shopping.typeB\nTypesProtoP\x01Z/cloud.google.com/go/shopping/type/typepb;typepb\xaa\x02\x14Google.Shopping.Typeb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Shopping
    module Type
      Price = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.type.Price").msgclass
      CustomAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.type.CustomAttribute").msgclass
      Destination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.type.Destination").msgclass
      Destination::DestinationEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.type.Destination.DestinationEnum").enummodule
      ReportingContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.type.ReportingContext").msgclass
      ReportingContext::ReportingContextEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.type.ReportingContext.ReportingContextEnum").enummodule
      Channel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.type.Channel").msgclass
      Channel::ChannelEnum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.type.Channel.ChannelEnum").enummodule
    end
  end
end

#### Source proto file: google/shopping/type/types.proto ####
#
# // Copyright 2023 Google LLC
# //
# // Licensed under the Apache License, Version 2.0 (the "License");
# // you may not use this file except in compliance with the License.
# // You may obtain a copy of the License at
# //
# //     http://www.apache.org/licenses/LICENSE-2.0
# //
# // Unless required by applicable law or agreed to in writing, software
# // distributed under the License is distributed on an "AS IS" BASIS,
# // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# // See the License for the specific language governing permissions and
# // limitations under the License.
#
# syntax = "proto3";
#
# package google.shopping.type;
#
# option csharp_namespace = "Google.Shopping.Type";
# option go_package = "cloud.google.com/go/shopping/type/typepb;typepb";
# option java_multiple_files = true;
# option java_outer_classname = "TypesProto";
# option java_package = "com.google.shopping.type";
#
# // The price represented as a number and currency.
# message Price {
#   // The price represented as a number in micros (1 million micros is an
#   // equivalent to one's currency standard unit, for example, 1 USD = 1000000
#   // micros).
#   // This field can also be set as infinity by setting to -1.
#   // This field only support -1 and positive value.
#   optional int64 amount_micros = 1;
#
#   // The currency of the price using three-letter acronyms according to [ISO
#   // 4217](http://en.wikipedia.org/wiki/ISO_4217).
#   optional string currency_code = 2;
# }
#
# // A message that represents custom attributes. Exactly one of `value` or
# // `group_values` must not be empty.
# message CustomAttribute {
#   // The name of the attribute.
#   optional string name = 1;
#
#   // The value of the attribute. If `value` is not empty, `group_values` must be
#   // empty.
#   optional string value = 2;
#
#   // Subattributes within this attribute group.  If
#   // `group_values` is not empty, `value` must be empty.
#   repeated CustomAttribute group_values = 3;
# }
#
# // Destinations available for a product.
# //
# // Destinations are used in Merchant Center to allow you to control where the
# // products from your data feed should be displayed.
# //
# message Destination {
#   // Destination values.
#   enum DestinationEnum {
#     // Not specified.
#     DESTINATION_ENUM_UNSPECIFIED = 0;
#
#     // [Shopping ads](https://support.google.com/google-ads/answer/2454022).
#     SHOPPING_ADS = 1;
#
#     // [Display ads](https://support.google.com/merchants/answer/6069387).
#     DISPLAY_ADS = 2;
#
#     // [Local inventory
#     // ads](https://support.google.com/merchants/answer/3057972).
#     LOCAL_INVENTORY_ADS = 3;
#
#     // [Free listings](https://support.google.com/merchants/answer/9199328).
#     FREE_LISTINGS = 4;
#
#     // [Free local product
#     // listings](https://support.google.com/merchants/answer/9825611).
#     FREE_LOCAL_LISTINGS = 5;
#
#     // [YouTube Shopping](https://support.google.com/merchants/answer/12362804).
#     YOUTUBE_SHOPPING = 6;
#   }
# }
#
# // Reporting contexts that your account and product issues apply to.
# //
# // Reporting contexts are groups of surfaces and formats for product results on
# // Google. They can represent the entire destination (for example, [Shopping
# // ads](https://support.google.com/merchants/answer/6149970)) or a subset of
# // formats within a destination (for example, [Discovery
# // ads](https://support.google.com/merchants/answer/13389785)).
# //
# message ReportingContext {
#   // Reporting context values.
#   enum ReportingContextEnum {
#     // Not specified.
#     REPORTING_CONTEXT_ENUM_UNSPECIFIED = 0;
#
#     // [Shopping ads](https://support.google.com/merchants/answer/6149970).
#     SHOPPING_ADS = 1;
#
#     // [Discovery and Demand Gen
#     // ads](https://support.google.com/merchants/answer/13389785).
#     DISCOVERY_ADS = 2;
#
#     // [Video ads](https://support.google.com/google-ads/answer/6340491).
#     VIDEO_ADS = 3;
#
#     // [Display ads](https://support.google.com/merchants/answer/6069387).
#     DISPLAY_ADS = 4;
#
#     // [Local inventory
#     // ads](https://support.google.com/merchants/answer/3271956).
#     LOCAL_INVENTORY_ADS = 5;
#
#     // [Vehicle inventory
#     // ads](https://support.google.com/merchants/answer/11544533).
#     VEHICLE_INVENTORY_ADS = 6;
#
#     // [Free product
#     // listings](https://support.google.com/merchants/answer/9199328).
#     FREE_LISTINGS = 7;
#
#     // [Free local product
#     // listings](https://support.google.com/merchants/answer/9825611).
#     FREE_LOCAL_LISTINGS = 8;
#
#     // [Free local vehicle
#     // listings](https://support.google.com/merchants/answer/11544533).
#     FREE_LOCAL_VEHICLE_LISTINGS = 9;
#
#     // [YouTube
#     // Shopping](https://support.google.com/merchants/answer/13478370).
#     YOUTUBE_SHOPPING = 10;
#
#     // [Cloud retail](https://cloud.google.com/solutions/retail).
#     CLOUD_RETAIL = 11;
#
#     // [Local cloud retail](https://cloud.google.com/solutions/retail).
#     LOCAL_CLOUD_RETAIL = 12;
#   }
# }
#
# // [Channel](https://support.google.com/merchants/answer/7361332) of a product.
# //
# // Channel is used to distinguish between online and local products.
# message Channel {
#   // Channel values.
#   enum ChannelEnum {
#     // Not specified.
#     CHANNEL_ENUM_UNSPECIFIED = 0;
#
#     // Online product.
#     ONLINE = 1;
#
#     // Local product.
#     LOCAL = 2;
#   }
# }
