# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/logging.proto

require 'google/protobuf'


descriptor_data = "\n\x18google/api/logging.proto\x12\ngoogle.api\"\xd7\x01\n\x07Logging\x12\x45\n\x15producer_destinations\x18\x01 \x03(\x0b\x32&.google.api.Logging.LoggingDestination\x12\x45\n\x15\x63onsumer_destinations\x18\x02 \x03(\x0b\x32&.google.api.Logging.LoggingDestination\x1a>\n\x12LoggingDestination\x12\x1a\n\x12monitored_resource\x18\x03 \x01(\t\x12\x0c\n\x04logs\x18\x01 \x03(\tBn\n\x0e\x63om.google.apiB\x0cLoggingProtoP\x01ZEgoogle.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig\xa2\x02\x04GAPIb\x06proto3"

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
  module Api
    Logging = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Logging").msgclass
    Logging::LoggingDestination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.Logging.LoggingDestination").msgclass
  end
end

#### Source proto file: google/api/logging.proto ####
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
# package google.api;
#
# option go_package = "google.golang.org/genproto/googleapis/api/serviceconfig;serviceconfig";
# option java_multiple_files = true;
# option java_outer_classname = "LoggingProto";
# option java_package = "com.google.api";
# option objc_class_prefix = "GAPI";
#
# // Logging configuration of the service.
# //
# // The following example shows how to configure logs to be sent to the
# // producer and consumer projects. In the example, the `activity_history`
# // log is sent to both the producer and consumer projects, whereas the
# // `purchase_history` log is only sent to the producer project.
# //
# //     monitored_resources:
# //     - type: library.googleapis.com/branch
# //       labels:
# //       - key: /city
# //         description: The city where the library branch is located in.
# //       - key: /name
# //         description: The name of the branch.
# //     logs:
# //     - name: activity_history
# //       labels:
# //       - key: /customer_id
# //     - name: purchase_history
# //     logging:
# //       producer_destinations:
# //       - monitored_resource: library.googleapis.com/branch
# //         logs:
# //         - activity_history
# //         - purchase_history
# //       consumer_destinations:
# //       - monitored_resource: library.googleapis.com/branch
# //         logs:
# //         - activity_history
# message Logging {
#   // Configuration of a specific logging destination (the producer project
#   // or the consumer project).
#   message LoggingDestination {
#     // The monitored resource type. The type must be defined in the
#     // [Service.monitored_resources][google.api.Service.monitored_resources]
#     // section.
#     string monitored_resource = 3;
#
#     // Names of the logs to be sent to this destination. Each name must
#     // be defined in the [Service.logs][google.api.Service.logs] section. If the
#     // log name is not a domain scoped name, it will be automatically prefixed
#     // with the service name followed by "/".
#     repeated string logs = 1;
#   }
#
#   // Logging configurations for sending logs to the producer project.
#   // There can be multiple producer destinations, each one must have a
#   // different monitored resource type. A log can be used in at most
#   // one producer destination.
#   repeated LoggingDestination producer_destinations = 1;
#
#   // Logging configurations for sending logs to the consumer project.
#   // There can be multiple consumer destinations, each one must have a
#   // different monitored resource type. A log can be used in at most
#   // one consumer destination.
#   repeated LoggingDestination consumer_destinations = 2;
# }
