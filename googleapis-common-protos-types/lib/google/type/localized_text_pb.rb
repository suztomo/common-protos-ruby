# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/type/localized_text.proto

require 'google/protobuf'


descriptor_data = "\n google/type/localized_text.proto\x12\x0bgoogle.type\"4\n\rLocalizedText\x12\x0c\n\x04text\x18\x01 \x01(\t\x12\x15\n\rlanguage_code\x18\x02 \x01(\tBz\n\x0f\x63om.google.typeB\x12LocalizedTextProtoP\x01ZHgoogle.golang.org/genproto/googleapis/type/localized_text;localized_text\xf8\x01\x01\xa2\x02\x03GTPb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
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
  module Type
    LocalizedText = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.type.LocalizedText").msgclass
  end
end

#### Source proto file: google/type/localized_text.proto ####
#
# // Copyright 2021 Google LLC
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
# package google.type;
#
# option cc_enable_arenas = true;
# option go_package = "google.golang.org/genproto/googleapis/type/localized_text;localized_text";
# option java_multiple_files = true;
# option java_outer_classname = "LocalizedTextProto";
# option java_package = "com.google.type";
# option objc_class_prefix = "GTP";
#
# // Localized variant of a text in a particular language.
# message LocalizedText {
#   // Localized string in the language corresponding to `language_code' below.
#   string text = 1;
#
#   // The text's BCP-47 language code, such as "en-US" or "sr-Latn".
#   //
#   // For more information, see
#   // http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
#   string language_code = 2;
# }
