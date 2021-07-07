$(function(){
    var current = location.search;
    
    if (current.length > 0){
          $('.menu').each(function(){
          var $this = $(this);
  
          if($this.attr('href').indexOf(current) !== -1){
              $this.addClass('active');
          }
      })
    }
})