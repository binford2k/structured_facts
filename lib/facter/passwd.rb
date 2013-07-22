require 'json'
require 'etc'
Facter.add(:encoded_passwd) do
  confine :kernel => "Linux"
  setcode do
    passwd = {}
    Etc.passwd do |user|
      passwd[user.name] = Hash[user.each_pair.to_a]
    end
    passwd.to_json
  end
end
