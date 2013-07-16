Puppet::Parser::Functions.newfunction(:decode_structured_facts, :doc => <<-EOS
  This function parses JSON encoded facts that begins with a magic marker string
  and sets corresponding global facts of the same name to the data structure that
  the original fact decodes to.

  Examples:

  * `encoded_ipaddresses` => `ipaddresses`
  * `encoded_mounts`      => `mounts`

  This function should be placed near the top of `site.pp`.
EOS
) do
  to_hash.each do |key, value|
    begin
      if match = key.match(/^encoded_(.*)$/)
        data = function_parsejson([value])
        Puppet.debug "structured facts: Setting #{match.captures[0]} to #{data.inspect}"
        setvar(match.captures[0], data)
      end
    rescue NoMethodError => e
      Puppet.debug "structured facts: #{key} is not a string!"
    rescue Exception
      Puppet.debug "structured facts: #{key} did not parse properly!"
    end
  end
end
