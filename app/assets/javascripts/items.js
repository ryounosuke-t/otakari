$(function(){

  /*=======================================
  タブ切り替え
  =========================================*/

  // タブメニューをクリックしたとき
  $('.js-tab > li').click(function(){

    // タブメニューとタブコンテンツのクラス「active」を削除
    $('.js-tab > li,.js-tab_content').removeClass('selected');

    // タブメニューのクラスを取得し、変数「tabClass」に格納（例：sky）
    var tabClass = $(this).attr('class');
    console.log($(this).attr('class').indexOf(tabClass));
    // クリックしたタブメニューにクラス「active」を付与
    $(this).addClass('selected');


    // それぞれのタブコンテンツに対して
    $('.js-tab_content').each(function(){

      // 変数「tabClass」と、同じクラスがついたタブコンテンツに
      if(tabClass == "sunset") {

        // クラス「active」を付与し、フェードインしながら表示
        $(this).addClass('selected').show();
      // それ以外のタブコンテンツは
      }else{

        // 隠す
        $(this).hide();

      }

    });

  });

});
