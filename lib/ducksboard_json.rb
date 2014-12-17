require 'json'


module DucksboardJson
  class DucksboardJson

    def initialize(application, job, value, options={})
      @application = application
      @job = job

      @json = {
        'value' => value,
        'completion_time' => Time.now.to_i,
        'application' => application
      }.to_json 
    end

    def write
      filename = "/tmp/ducksboard_json/#{@application}/#{@job}.json"
      FileUtils.mkdir_p(File.dirname(filename))

      File.open(filename, 'w') do |f|
        f.write(@json)
      end
    end
  end
end
