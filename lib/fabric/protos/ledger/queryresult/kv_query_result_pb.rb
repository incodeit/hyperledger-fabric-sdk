# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ledger/queryresult/kv_query_result.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message 'queryresult.KV' do
    optional :namespace, :string, 1
    optional :key, :string, 2
    optional :value, :bytes, 3
  end
  add_message 'queryresult.KeyModification' do
    optional :tx_id, :string, 1
    optional :value, :bytes, 2
    optional :timestamp, :message, 3, 'google.protobuf.Timestamp'
    optional :is_delete, :bool, 4
  end
end

module Queryresult
  KV = Google::Protobuf::DescriptorPool.generated_pool.lookup('queryresult.KV').msgclass
  KeyModification = Google::Protobuf::DescriptorPool.generated_pool.lookup('queryresult.KeyModification').msgclass
end
