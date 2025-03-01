# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: orderer/kafka.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "orderer.KafkaMessage" do
    oneof :Type do
      optional :regular, :message, 1, "orderer.KafkaMessageRegular"
      optional :time_to_cut, :message, 2, "orderer.KafkaMessageTimeToCut"
      optional :connect, :message, 3, "orderer.KafkaMessageConnect"
    end
  end
  add_message "orderer.KafkaMessageRegular" do
    optional :payload, :bytes, 1
  end
  add_message "orderer.KafkaMessageTimeToCut" do
    optional :block_number, :uint64, 1
  end
  add_message "orderer.KafkaMessageConnect" do
    optional :payload, :bytes, 1
  end
  add_message "orderer.KafkaMetadata" do
    optional :last_offset_persisted, :int64, 1
  end
end

module Orderer
  KafkaMessage = Google::Protobuf::DescriptorPool.generated_pool.lookup("orderer.KafkaMessage").msgclass
  KafkaMessageRegular = Google::Protobuf::DescriptorPool.generated_pool.lookup("orderer.KafkaMessageRegular").msgclass
  KafkaMessageTimeToCut = Google::Protobuf::DescriptorPool.generated_pool.lookup("orderer.KafkaMessageTimeToCut").msgclass
  KafkaMessageConnect = Google::Protobuf::DescriptorPool.generated_pool.lookup("orderer.KafkaMessageConnect").msgclass
  KafkaMetadata = Google::Protobuf::DescriptorPool.generated_pool.lookup("orderer.KafkaMetadata").msgclass
end
