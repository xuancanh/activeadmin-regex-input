//= require webui-popover

// https://css-tricks.com/snippets/javascript/get-url-variables/
// Get url query params
function getQueryVariable(key)
{
  const query = decodeURI(window.location.search.substring(1));
  let vars = query.split("&");
  for (let i = 0; i < vars.length; i++) {
    var pair = vars[i].split("=");
    if(pair[0] === key){
      // Replace + in url with space, might make the previous data became wrong
      return decodeURIComponent(pair[1].replace('+', ' '));
    }
  }
  return null;
}

// Init all reqex input
function initRegexInputs(inputs) {
  for (let item of inputs) {
    let input = $(item);
    const regex = new RegExp(input.data('regex'));
    const example = input.data('example');

    // Reassign input value with query param from url
    const value = getQueryVariable(input.attr('name'));
    if (value) {
      input.val(value);
    }
    // Create popover
    input.webuiPopover({
      title: 'Wrong input format',
      content: `Example: ${example}`,
      trigger: 'manual'
    });

    // Show popover and change color if current input doesn't match regex
    input.on('keyup', event => {
      console.log(input.val());
      if (!regex.test(input.val())) {
        input.css('border-color', 'red');
        input.webuiPopover('show');
      } else {
        input.webuiPopover('hide');
        input.css('border-color', '#c9d0d6');
      }
    });
  }
}

$(document).ready(() => {
  initRegexInputs($('.regex-input'));
});