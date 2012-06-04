module Straeto

  # Public: The config located in config/straeto.yml.
  #
  # Returns an OpenStruct so you can chain methods off of `Play.config`.
  def self.config
    OpenStruct.new \
      :some_setting => yaml['some_setting']
  end

private

  # Load the config YAML.
  #
  # Returns a memoized Hash.
  def self.yaml
    if File.exist?('config/straeto.yml')
      @yaml ||= YAML.load_file('config/straeto.yml')
    else
      {}
    end
  end

end
