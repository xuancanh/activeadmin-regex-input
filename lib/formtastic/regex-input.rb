module Formtastic
  module Inputs

    class RegexInput < Formtastic::Inputs::StringInput
      def input_html_options
        {
            class: 'regex-input',
            data: {regex: options[:regex]},
        }.merge(super)
      end
    end

  end
end