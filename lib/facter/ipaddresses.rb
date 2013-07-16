require 'json'

Facter.add(:encoded_ipaddresses) do
  setcode do
    ips = {}
    Facter.value(:interfaces).split(',').each do |iface|
      ips[iface] = Facter.value("ipaddress_#{iface}")
    end
    ips.to_json
  end
end

Facter.add(:encoded_interfaces_array) do
  setcode do
    Facter.value(:interfaces).split(',').to_json
  end
end
