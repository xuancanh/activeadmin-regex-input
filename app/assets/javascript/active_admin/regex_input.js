//= require webui-popover

function initRegexInput(inputs) {
  for (let item of inputs) {
    let input = $(item);
    const regex = new RegExp(input.data('regex'));
    const example = input.data('example');

    // Create popover
    input.webuiPopover({
      title: 'Wrong input format',
      content: `Example: ${example}`,
      trigger: 'manual'
    });

    // Show popover if input doesn't match regex
    input.on('change', event => {
      console.log(input.val());
      if (!regex.test(input.val())) {
        input.css('border-color', 'red');
        input.webuiPopover('show');
      } else {
        input.webuiPopover('hide');
        input.css('border-color', 'black');
      }
    });
  }
}

$(document).ready(() => {
  initRegexInput($('.regex-input'));
});