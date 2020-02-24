module ApplicationHelper
  def flash_class(message_type)
    case message_type
      when "en" then t ".english"
      when "ja" then t ".japanese"
      when "vi" then t ".vietnamese"
    end
  end

  def is_current_locale(c)
    if c == locale
      "selected"
    end
  end
end
