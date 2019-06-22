 var _index5 = 0;
 $("#four_flash .but_right").click(function() {
     _index5++;
     var len = $("#four_flash .othermore ul li").length;
     //   if (_index5 + 5 > len) {
     //   $("#four_flash .othermore ul").stop().append($("#four_flash ul.mobile").html());
     //  }
     $("#four_flash .othermore ul").stop().animate({
         left: -_index5 * 326
     }, 1000);
 });


 $("#four_flash .but_left").click(function() {
     if (_index5 == 0) {
         $("#four_flash ul.mobile").prepend($("#four_flash ul.mobile").html());
         $("#four_flash ul.mobile").css("left", "-1380px");
         _index5 = 6
     }
     _index5--;
     $("#four_flash .othermore ul.mobile").stop().animate({
         left: -_index5 * 326
     }, 1000);
 });
 $("#four_flash .but_right").click(
     function() {
         $("#four_flash .but_left").removeClass("visi");
     }
 );
