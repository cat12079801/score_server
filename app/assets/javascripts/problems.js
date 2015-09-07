//alert(1);

$(function() {
    $('.row').on('ajax:success', function(event, data, status, xhr) {
      console.log(data["status"]);
      if(data["status"] == 'success'){
        append_modal();
      }else{
        append_alert(data["flag"]);
      }
    });

    $(document).on('click', 'button.close-modal', function(){
      $('div.modal').remove();
    });
});

function append_modal(){
  $('div.alerts').append('<div class="modal"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header"> <h4 class="modal-title">Congratulations!</h4> </div> <div class="modal-body"> <p>You solved this problem :)</p><p>Let\'s try others plz :p</p></div> <div class="modal-footer"> <button type="button" class="btn btn-primary close-modal">Save changes</button> </div> </div> </div> </div>');
}

function append_alert(flag){
  if(flag === ''){
    flag = "It";
  }
  $('div.alerts').append('<div class="alert alert-dismissible alert-danger"> <button type="button" class="close" data-dismiss="alert">×</button><strong>Oops! ' + flag + ' is incorrect answer...</strong></div>');
}
