require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Pif do
  let(:pif_class) do
    class Fog::Compute::XenServer::Models::Pif
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Pif
  end

  it 'should return the unique id' do
    pif_class.read_identity.must_equal(:reference)
  end

  it 'should have 32 attributes' do
    pif_class.attributes.must_equal([ :reference,
                                      :__bond_master_of,
                                      :__bond_slave_of,
                                      :disallow_unplug,
                                      :currently_attached,
                                      :device,
                                      :device_name,
                                      :dns,
                                      :gateway,
                                      :__host,
                                      :ip,
                                      :ip_configuration_mode,
                                      :ipv6,
                                      :ipv6_configuration_mode,
                                      :ipv6_gateway,
                                      :mac,
                                      :management,
                                      :metrics,
                                      :mtu,
                                      :netmask,
                                      :__network,
                                      :other_config,
                                      :physical,
                                      :primary_address_type,
                                      :status_code,
                                      :status_detail,
                                      :__tunnel_access_pif_of,
                                      :__tunnel_transport_pif_of,
                                      :vlan,
                                      :vlan_master_of,
                                      :vlan_slave_of,
                                      :uuid ])
  end

  it 'should have 14 aliases' do
    pif_class.aliases.must_equal({ :bond_master_of => :__bond_master_of,
                                   :bond_slave_of => :__bond_slave_of, 
                                   :MAC => :mac,
                                   :DNS => :dns, 
                                   :IP => :ip, 
                                   :IPv6 => :ipv6, 
                                   :MTU => :mtu, 
                                   :network => :__network, 
                                   :tunnel_access_PIF_of => :__tunnel_access_pif_of, 
                                   :tunnel_transport_PIF_of => :__tunnel_transport_pif_of, 
                                   :VLAN => :vlan, 
                                   :VLAN_master_of => :vlan_master_of, 
                                   :VLAN_slave_of => :vlan_slave_of, 
                                   :host => :__host })
  end
end