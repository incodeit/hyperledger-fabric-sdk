# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: peer/configuration.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message 'protos.AnchorPeers' do
    repeated :anchor_peers, :message, 1, 'protos.AnchorPeer'
  end
  add_message 'protos.AnchorPeer' do
    optional :host, :string, 1
    optional :port, :int32, 2
  end
  add_message 'protos.APIResource' do
    optional :policy_ref, :string, 1
  end
  add_message 'protos.ACLs' do
    map :acls, :string, :message, 1, 'protos.APIResource'
  end
end

module Protos
  AnchorPeers = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.AnchorPeers').msgclass
  AnchorPeer = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.AnchorPeer').msgclass
  APIResource = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.APIResource').msgclass
  ACLs = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.ACLs').msgclass
end