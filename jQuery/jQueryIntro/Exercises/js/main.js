$(document).ready(function (){
  // find all the span tags
  var spans = $('span');
  alert(spans.length);

  //change color of h4
  $('h4').css('background-color', 'Green');

  //print content of each div
  //$('div').each(function (){
  //  alert($(this).html());
  //});

  //print number of all divs and spans
  var coll = $('div, span');
  alert(coll.length);

  // Select element by id
  alert($("#heading").html());
  // change color of id=Heading
  $('#heading').css('background-color', 'Yellow');

  $('.text1').css('border', '2px solid blue');


  //select inputs
  var inputs = $(':input');
  alert($(inputs[1]).val());

});
