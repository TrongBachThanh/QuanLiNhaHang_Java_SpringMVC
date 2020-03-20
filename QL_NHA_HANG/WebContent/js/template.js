/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function($)
{
    
	$(document).ready(function()
	{
            $('a[href=#]').click(function (e) {
                e.preventDefault();
            });
            $('.btn-navbar').click(function(e){
                e.preventDefault();
                var collapse = $('.nav-collapse.collapse');
                var il = $(collapse).find('.mMenu > li').length;
                var h = il*50;
                if($(collapse).hasClass('in'))
                {
                    $(collapse).animate({height: 0}, 500);
                    $(collapse).removeClass('in');
                }
                else{
                    $(collapse).animate({height: h}, 500);
                    $(collapse).addClass('in');
                }
            });
	});
})(jQuery);
