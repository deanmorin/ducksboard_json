require 'json'


module DucksboardJson
  class DucksboardJson

    def initialize(application, job, value, options={})
      @job = job
      @dir = options.fetch(:dir, nil)
      @dir ||= "/tmp/ducksboard_json/#{application}"

      @json = {
        'value' => value,
        'completion_time' => Time.now.to_i,
        'application' => application
      }.to_json 
    end

    def write
      filename = "#{@dir}/#{@job}.json"
      FileUtils.mkdir_p(File.dirname(filename))

      File.open(filename, 'w') do |f|
        f.write(@json)
      end
    end
  end
end
