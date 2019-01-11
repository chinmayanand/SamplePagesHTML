   $(document).ready(function()
  {
    var divs=$('div');
    //alert(divs.length);
    $('.effect').hover(function(){
        $(this).toggleClass('effect_query');
    });
  })
  ///*Multiple selection*/ ->  $('.effect'.hover,p,div.effect).css
  ///*Finding particular attributes*/ -> $('.effect.hover,p,div.effect,'div[title="hello"]').
  ///*Input Selector Demo*/ var inputs=$(:input); $(inputs[1]).val() /*access Values of Input Fields*/
///*We can also use each function to iterate through all elements $(:input).each(function(){ /*Own codes to deal with individual Elements*/ });
//