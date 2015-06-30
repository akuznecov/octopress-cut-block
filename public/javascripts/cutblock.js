$(document).ready(function() {

  var switchesSelector = '.cut_block_show,.cut_block_hide';
  var contentSelector = '.cut_block_content';

  $(document).on('click', switchesSelector, function() {
    var selector = switchesSelector + ',' + contentSelector;
    $(this).parent().children(selector).toggle();
    return false;
  });
});