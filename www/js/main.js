var calculate;

calculate = function(elem) {
  var barW, curSide, num10, num2, num25, num35, num45, num5, side, totalW;
  totalW = $('#total').val();
  totalW = parseInt(totalW);
  barW = $('#bar').val();
  barW = parseInt(barW);
  side = (totalW - barW) / 2;
  console.log('value: ' + side);
  $('#sides').text(side);
  if (side >= 45) num45 = side / 45;
  if (num45) num45 = Math.floor(num45);
  if (num45) $('#45').text(num45);
  if (num45) curSide = side - (num45 * 45);
  if (curSide >= 35) num35 = curSide / 35;
  if (num35) num35 = Math.floor(num35);
  if (num35) $('#35').text(num35);
  if (num35) curSide = curSide - (num35 * 35);
  if (curSide >= 25) num25 = curSide / 25;
  if (num25) num25 = Math.floor(num25);
  if (num25) $('#25').text(num25);
  if (num25) curSide = curSide - (num25 * 25);
  if (curSide >= 10) num10 = curSide / 10;
  if (num10) num10 = Math.floor(num10);
  if (num10) $('#10').text(num10);
  if (num10) curSide = curSide - (num10 * 10);
  if (curSide >= 5) num5 = curSide / 5;
  if (num5) num5 = Math.floor(num5);
  if (num5) $('#5').text(num5);
  if (num5) curSide = curSide - (num5 * 5);
  if (curSide >= 2.5) num2 = curSide / 2.5;
  if (num2) num2 = Math.floor(num2);
  if (num2) return $('#2').text(num2);
};

$(function() {
  return $(".slider").on("slidestop", function(event, ui) {
    return calculate($(this).siblings('input'));
  });
});
