$(function () {
  Payjp.setPublicKey("pk_test_fd625470f0835cc2ab561f35");
  $("#token_submit").click(function (e) {
    e.preventDefault();
    let card = {
      number: $("#card_number").val(),
      cvc: $("#cvc").val(),
      exp_month: $("#exp_month").val(),
      exp_year: $("#exp_year").val()
    };
    Payjp.createToken(card, function (status, response) {
      console.log(response)
      if (status === 200) {
        $("#card_token").append(
          $('<input type="hidden" name="payjp-token">').val(response.id)
        );
        $("form").submit();
      } else {
        alert("カード情報が正しくありません。");
      }
    });
  });
});