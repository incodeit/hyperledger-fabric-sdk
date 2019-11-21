# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: token/prover.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'token/transaction_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message 'protos.TokenToIssue' do
    optional :recipient, :bytes, 1
    optional :type, :string, 2
    optional :quantity, :uint64, 3
  end
  add_message 'protos.ImportRequest' do
    optional :credential, :bytes, 1
    repeated :tokens_to_issue, :message, 2, 'protos.TokenToIssue'
  end
  add_message 'protos.Header' do
    optional :timestamp, :message, 1, 'google.protobuf.Timestamp'
    optional :channel_id, :string, 2
    optional :nonce, :bytes, 3
    optional :creator, :bytes, 4
  end
  add_message 'protos.Command' do
    optional :header, :message, 1, 'protos.Header'
    oneof :payload do
      optional :import_request, :message, 2, 'protos.ImportRequest'
    end
  end
  add_message 'protos.SignedCommand' do
    optional :command, :bytes, 1
    optional :signature, :bytes, 2
  end
  add_message 'protos.CommandResponseHeader' do
    optional :timestamp, :message, 1, 'google.protobuf.Timestamp'
    optional :command_hash, :bytes, 2
    optional :creator, :bytes, 3
  end
  add_message 'protos.Error' do
    optional :message, :string, 1
    optional :payload, :bytes, 2
  end
  add_message 'protos.CommandResponse' do
    optional :header, :message, 1, 'protos.CommandResponseHeader'
    oneof :payload do
      optional :err, :message, 2, 'protos.Error'
      optional :token_transaction, :message, 3, 'TokenTransaction'
    end
  end
  add_message 'protos.SignedCommandResponse' do
    optional :response, :bytes, 1
    optional :signature, :bytes, 2
  end
end

module Protos
  TokenToIssue = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.TokenToIssue').msgclass
  ImportRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.ImportRequest').msgclass
  Header = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.Header').msgclass
  Command = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.Command').msgclass
  SignedCommand = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.SignedCommand').msgclass
  CommandResponseHeader = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.CommandResponseHeader').msgclass
  Error = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.Error').msgclass
  CommandResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.CommandResponse').msgclass
  SignedCommandResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.SignedCommandResponse').msgclass
end
