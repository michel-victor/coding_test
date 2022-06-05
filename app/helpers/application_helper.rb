module ApplicationHelper
  def errors(object)
    render partial: 'layouts/errors', locals: { object: object }
  end
end
