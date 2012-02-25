$(document).ready(function() {

  $('a.put').live('click', function() {
    $.post($(this).attr('href'), { _method: 'put', authenticty_token: AUTH_TOKEN });
  });

  $('a.delete').live('click', function() {
    if (confirm("Are you sure?")) {
      $.post($(this).attr('href'), { _method: 'delete', authenticty_token: AUTH_TOKEN });
    }
  });

  // $('.date').datepicker({
  //   showButtonPanel: true,
  //   showOn:          'button',
  //   buttonImageOnly: true,
  //   buttonImage:     '/images/datepicker.png',
  //   buttonText:      'Choose a Date',
  //   dateFormat:       'yy-mm-dd'
  // });

});
