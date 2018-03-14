module Formtastic
  module Inputs

    class RegexInput < Formtastic::Inputs::StringInput
      def input_html_options

        {
            class: 'regex-input',
            data: {
                regex: options[:regex],
                example: options[:example]
            },
            placeholder_text: options[:example]
        }
      end

      # Overwrite default li tag
      def input_wrapping(&block)
        template.content_tag(:div,
                            [template.capture(&block), error_html, hint_html].join("\n").html_safe,
                            wrapper_html_options
        )
      end

      # Overwrite wrapper html by the active admin class
      def wrapper_html_options
        super.merge(:class => 'filter_form_field filter_string')
      end
    end

  end
end