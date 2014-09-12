 





$(document).ready(function() {
  $('#clientsOpen').click(function() {
     $('#clientsDropDown #clientsDashboard').slideToggle({ direction: "up" }, 300);
 $(this).toggleClass('clientsClose'); 
  }); // end click
});
$(document).ready(function(){ 
    $("#myTab a").click(function(e){
    	e.preventDefault();
    	$(this).tab('show');
    });
});
 

function GetScorer() {
    var year = document.getElementById("drpDwnYear").value;

    
    var scorerName = year.split(" ");
    document.getElementById("scorerName").innerHTML = "Best Scorer of this World cup was   " + scorerName[1];

    var imageName = scorerName[1] + ".jpg";

    var html = '<img border="0" src="images/'+imageName+'" alt="Pulpit rock" width="304" height="228">';

    $("#scorerName").append(html);
    }
    
