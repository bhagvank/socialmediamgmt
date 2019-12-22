class BootstrapFormBuilder < ActionView::Helpers::FormBuilder
  def group(method, &block)
    if object.errors.has_key?(method)
      class_names = "form-group has-error"
    else
      class_names = "form-group"
    end

    content = @template.capture(&block)

    %Q(<div class="#{class_names}">#{content}</div>).html_safe
  end

  # Other methods
end