require 'minitest_helper'

describe Fog::Compute::XenServer::Models::PoolPatch do
  let(:pool_patch_class) do
    class Fog::Compute::XenServer::Models::PoolPatch
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::PoolPatch
  end

  it 'should return the unique id' do
    pool_patch_class.read_identity.must_equal(:reference)
  end

  it 'should have 10 attributes' do
    pool_patch_class.attributes.must_equal([ :reference,
                                             :after_apply_guidance,
                                             :description,
                                             :__host_patches,
                                             :name,
                                             :other_config,
                                             :pool_applied,
                                             :size,
                                             :uuid,
                                             :version ])
  end

  it 'should have 3 aliases' do
    pool_patch_class.aliases.must_equal({ :host_patches => :__host_patches,
                                          :name_description => :description,
                                          :name_label => :name })
  end
end