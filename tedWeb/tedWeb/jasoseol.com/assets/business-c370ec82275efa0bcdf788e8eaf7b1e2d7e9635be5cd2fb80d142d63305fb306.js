$(document).ready(function(){function e(){$(".partner-companies").width()<=700?($(".partner-companies").css({overflowX:"scroll"}),$(".company-images div").width("204px")):($(".partner-companies").css({overflowX:""}),$(".company-images div").width(""))}function t(){$("#university_name").text(past_user_resume[u].university),$("#users_count").text(past_user_resume[u].users_count),$("#users_resumes_count").text(past_user_resume[u].users_resumes_count)}function n(e){e.show(),e.animate({top:"55px"},450,function(){e.css({display:"hidden"})})}function i(e){e.css({top:"-45px"}),e.show(),e.animate({top:"0px"},450)}function a(){o(),l()}function r(){s(),c()}function o(){$(".rect-tab:eq(1)").addClass("active"),$(".rect-tab:eq(0)").removeClass("active")}function s(){$(".rect-tab:eq(0)").addClass("active"),$(".rect-tab:eq(1)").removeClass("active")}function l(){$("#employment_registration").show(),$("#advertisement_goods").hide()}function c(){$("#employment_registration").hide(),$("#advertisement_goods").show()}var u=0;r(),t(),e(),$("#employment_registration_show").on("click",function(){a()}),$("#advertisement_goods_show").on("click",function(){r()}),$("#advertisement_goods_scroll").on("click",function(){r(),$("html, body").animate({scrollTop:$("#advertisement_goods").offset().top},0,function(){})}),$("#employment_registration_scroll").on("click",function(){a(),$("html, body").animate({scrollTop:$("#employment_registration").offset().top},0,function(){})}),$("form").submit(function(e){e.preventDefault(),$.post("/business/advertisement",$(this).serialize(),function(e){alert(e.result)}),$(this)[0].reset()}),$(window).resize(function(){e()}),setInterval(function(){++u,u%=past_user_resume.length;var e=$(".movable");n(e),setTimeout(function(){t(),i(e)},800)},4e3),$("#advertise_goods_show").on("click",function(){r()}),$("#employment_registration_show").on("click",function(){a()})});