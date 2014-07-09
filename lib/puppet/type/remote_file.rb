Puppet::Type.newtype(:remote_file) do

  newparam(:path) do
  end

  newparam(:replace) do
  end

  newparam(:force) do
  end

  newparam(:show_diff) do
  end

  newparam(:source) do
  end

  newproperty(:checksum) do
  end

  newproperty(:checksum_algorithm) do
    defaultto 'md5'
    validate do |value|
      unless [:md5, :sha256].include? value.to_sym
        raise ArgumentError, "#{value} is not a supported checksum algorithm"
      end
    end
  end

  def self.title_patterns
    [ [ /^(.*?)\/*\Z/m, [ [ :path ] ] ] ]
  end

end
