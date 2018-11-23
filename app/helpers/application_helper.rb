module ApplicationHelper
	DEFAULT_TYPE = :warning
	TYPES = { alert: :error, notice: :info }

  def noty_flashes
    flash.map do |key, value|
      javascript_tag(noty_flash_javascript(key, value))
    end.join.html_safe
  end

  def noty_flash_javascript(key, message)
    noty_type = TYPES[key.to_sym]

    unless noty_type
      Rails.logger.warn "Unknown flash type #{key}, use default #{DEFAULT_TYPE}"
      noty_type = DEFAULT_TYPE
    end

    "window.NotyFlash.show(#{noty_type.to_json}, #{message.to_json})"
  end
end
