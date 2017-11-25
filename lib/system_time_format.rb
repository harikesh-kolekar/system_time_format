require 'open3'
class SystemTimeFormat
  power_shell_functions = %w[full_date_time_pattern long_date_pattern long_time_pattern month_day_pattern short_date_pattern short_time_pattern sortable_date_time_pattern universal_sortable_date_time_pattern year_month_pattern]
  power_shell_functions.each do |pf|
    self.class.instance_eval do
      define_method("get_#{pf}") do
        ps_class_name = pf.split('_').collect!(&:capitalize).join
        windows_date_patorn = get_system_short_date_format(ps_class_name)[0].gsub(/[\s+\uFEFF]$/, '')
        conver_system_date_to_ruby_date_format windows_date_patorn
        windows_date_patorn
      end
    end
  end

  def self.conver_system_date_to_ruby_date_format windows_date_patorn
    windows_date_patorn.sub!("yyyy", "%Y")
    windows_date_patorn.sub!("yy", "%y")
    windows_date_patorn.sub!("MMMM", "%B")
    windows_date_patorn.sub!("MMM", "%b")
    windows_date_patorn.sub!("MM", "%m")
    windows_date_patorn.sub!("M", "%-m")
    windows_date_patorn.sub!("dddd", "%A")
    windows_date_patorn.sub!("ddd", "%a")
    windows_date_patorn.sub!("dd", "%abc")
    windows_date_patorn.sub!("d", "%-d")
    windows_date_patorn.sub!("%abc", "%d")
    windows_date_patorn.sub!("HH", "%abc")
    windows_date_patorn.sub!("H", "%k")
    windows_date_patorn.sub!("%abc", "%H")
    windows_date_patorn.sub!("hh", "%I")
    windows_date_patorn.sub!("h", "%l")
    windows_date_patorn.sub!("tt", "%P")
    windows_date_patorn.sub!("mm", "%M")
    windows_date_patorn.sub!("ss", "%S")
    windows_date_patorn.sub!("Z", "%Z")
  end

  def self.get_system_short_date_format(powershell_function)
    Open3.capture3('powershell [Globalization.Cultureinfo]::CurrentCulture.DateTimeFormat.' + powershell_function)
  end
end
