$(document).ready(function(){

    
    document.getElementById("divDateTime").innerHTML = Date();
    
    

 $('h3 ').hover(
    function(){
      $(this).addClass('active');
   },
   function(){
$(this).removeClass('active');
   }
);

});
$(document).ready(function(){


 $('h2 ').hover(
    function(){
      $(this).addClass('active');
   },
   function(){
$(this).removeClass('active');
   }
);

});
$(document).ready(function() {
    $("#menu").accordion({collapsible: true, active: false});
});

function GetScorer() {
    var year = document.getElementById("drpDwnYear").value;

    
    var scorerName = year.split(" ");
    document.getElementById("scorerName").innerHTML = "Best Scorer of this World cup was   " + scorerName[1];

    var imageName = scorerName[1] + ".jpg";

    var html = '<img border="0" src="images/'+imageName+'" alt="Pulpit rock" width="304" height="228">';

    $("#scorerName").append(html);
    }
    
    
    
