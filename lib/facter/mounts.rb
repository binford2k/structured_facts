require 'json'

Facter.add(:encoded_mounts) do
  setcode do
    mounts = {}
    Facter::Util::Resolution.exec('df -lh').each do |line|
      if match = line.match(/([\d\.]+[MG]?)\s*([\d\.]+[MG]?)\s*([\d\.]+[MG]?)\s*(\d+%)\s*(\/\S*)$/)
        mounts[match[5]] = {
          :size    => match[1],
          :used    => match[2],
          :avail   => match[3],
          :percent => match[4],
        }
      end
    end
    mounts.to_json
  end
end
