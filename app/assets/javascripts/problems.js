//alert(1);

$(function() {
    $('.row').on('ajax:success', function(event, data, status, xhr) {
      if(data["status"] == 'success'){
        append_modal();
      }else if(data["status"] == 'already'){
        append_already();
      }else if(data["status"] == 'admin'){
        append_admin();
      }else if(data["status"] == 'admin_success'){
        append_admin_success();
      }else if(data["status"] == 'failure'){
        append_alert(data["flag"]);
      }
    });

    $(document).on('click', 'button.close-modal', function(){
      $('div.modal').fadeOut('fast', function() { $(this).remove(); });
    });
});

function append_modal(){
  $('<div class="modal"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header"> <h4 class="modal-title">Congratulations!</h4> </div> <div class="modal-body"> <p>You solved this problem :)</p><p>Let\'s try others plz :p</p></div> <div class="modal-footer"> <button type="button" class="btn btn-primary close-modal">Close</button> </div> </div> </div> </div>').appendTo('div.alerts').hide().fadeIn(300);
}

function append_already(){
  $('div.alerts').append('<div class="alert alert-dismissible alert-info"> <button type="button" class="close" data-dismiss="alert">×</button> <strong>You already solved :(</strong></div>'); }

function append_admin(){
  $('div.alerts').append('<div class="alert alert-dismissible alert-info"> <button type="button" class="close" data-dismiss="alert">×</button> <strong>You are administor...</strong></div>'); }

function append_admin_success(){
  $('div.alerts').append('<div class="alert alert-dismissible alert-warning"> <button type="button" class="close" data-dismiss="alert">×</button> <strong>You are admin, and collect</strong></div>'); }

function append_alert(flag){
  if(flag === ''){
    flag = "It";
  }
  $('div.alerts').append('<div class="alert alert-dismissible alert-danger"> <button type="button" class="close" data-dismiss="alert">×</button><strong>Oops! ' + flag + ' is incorrect answer...</strong></div>');
}
