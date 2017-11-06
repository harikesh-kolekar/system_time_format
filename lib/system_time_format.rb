require 'open3'
class SystemTimeFormat
  power_shell_functions = ["full_date_time_pattern", "long_date_pattern", "long_time_pattern", "month_day_pattern", "short_date_pattern", "short_time_pattern", "sortable_date_time_pattern", "universal_sortable_date_time_pattern", "year_month_pattern"]
  power_shell_functions.each do |pf|
  	self.class.instance_eval do
      define_method("get_#{pf}") do 
        ps_class_name = pf.split('_').collect!{ |w| w.capitalize }.join
        p (get_system_short_date_format(ps_class_name)[0].gsub(/[\s+\uFEFF]/, ""))
      end
	end
  end

  def self.get_system_short_date_format(powershell_function)
    Open3.capture3("powershell [Globalization.Cultureinfo]::CurrentCulture.DateTimeFormat."+powershell_function)
  end
end
