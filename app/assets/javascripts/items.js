$(function(){

  /*=======================================
  タブ切り替え
  =========================================*/

  // タブメニューをクリックしたとき
  $('.js-tab > li').click(function(){

    $('.js-tab > li').removeClass('selected');
    $(this).addClass('selected');

  });
    // それぞれのタブコンテンツに対して
    $('.sky').click(function(){

        $('.left').addClass('selected');
        $('.right').removeClass('selected');

  });

    $('.sunset').click(function(){

      $('.left').removeClass('selected');
        $('.right').addClass('selected');

    });

});
