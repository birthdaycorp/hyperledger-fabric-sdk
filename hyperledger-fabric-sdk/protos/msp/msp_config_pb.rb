# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: msp/msp_config.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "msp.MSPConfig" do
    optional :type, :int32, 1
    optional :config, :bytes, 2
  end
  add_message "msp.FabricMSPConfig" do
    optional :name, :string, 1
    repeated :root_certs, :bytes, 2
    repeated :intermediate_certs, :bytes, 3
    repeated :admins, :bytes, 4
    repeated :revocation_list, :bytes, 5
    optional :signing_identity, :message, 6, "msp.SigningIdentityInfo"
    repeated :organizational_unit_identifiers, :message, 7, "msp.FabricOUIdentifier"
    optional :crypto_config, :message, 8, "msp.FabricCryptoConfig"
    repeated :tls_root_certs, :bytes, 9
    repeated :tls_intermediate_certs, :bytes, 10
  end
  add_message "msp.FabricCryptoConfig" do
    optional :signature_hash_family, :string, 1
    optional :identity_identifier_hash_function, :string, 2
  end
  add_message "msp.SigningIdentityInfo" do
    optional :public_signer, :bytes, 1
    optional :private_signer, :message, 2, "msp.KeyInfo"
  end
  add_message "msp.KeyInfo" do
    optional :key_identifier, :string, 1
    optional :key_material, :bytes, 2
  end
  add_message "msp.FabricOUIdentifier" do
    optional :certificate, :bytes, 1
    optional :organizational_unit_identifier, :string, 2
  end
end

module Msp
  MSPConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("msp.MSPConfig").msgclass
  FabricMSPConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("msp.FabricMSPConfig").msgclass
  FabricCryptoConfig = Google::Protobuf::DescriptorPool.generated_pool.lookup("msp.FabricCryptoConfig").msgclass
  SigningIdentityInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("msp.SigningIdentityInfo").msgclass
  KeyInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("msp.KeyInfo").msgclass
  FabricOUIdentifier = Google::Protobuf::DescriptorPool.generated_pool.lookup("msp.FabricOUIdentifier").msgclass
end
