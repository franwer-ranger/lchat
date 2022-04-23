module ApplicationHelper
  def banner_icon(type)
    case type
    when 'alert'
      'fas fa-exclamation-circle'
    when 'notice'
      'fas fa-check-circle'
    when 'success'
      'fas fa-check-circle'
    else
      'fas fa-exclamation-circle'
    end
  end

  def banner_border_color(type)
    case type
    when 'alert'
      @border_color = '#EEC200'
    when 'notice'
      @border_color = '#00A47B'
    when 'success'
      @border_color = '#00A47B'
    else
      @border_color = '#FD5749'
    end
  end
end
