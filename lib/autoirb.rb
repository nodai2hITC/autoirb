require "autoirb/version"

module Autoirb
  @repl ||= :irb
  if File.exist?($0)
    script = File.binread($0)
    encoding = "utf-8"
    if script.match(/\A(?:#!.*\R)?#.*coding *[:=] *(?<encoding>[^\s:]+)/)
      encoding = Regexp.last_match(:encoding)
    end
    script.force_encoding(encoding)
    last_binding = nil
    tracepoint = TracePoint.trace(:raise) do |tp|
      last_binding = tp.binding unless File.expand_path(tp.path) == File.expand_path(__FILE__)
    end
    
    begin
      TOPLEVEL_BINDING.eval(script, $0, 1)
    rescue => exception
      begin
        tracepoint.disable
        $stderr.write exception.full_message
        if last_binding
          require @repl.to_s unless last_binding.respond_to?(@repl)
          last_binding.public_send(@repl)
        end
      rescue
        raise exception
      end
    end
    exit
  end
end
