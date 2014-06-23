#side = 0
#curWeight = 0

calculate = (elem) ->
    totalW = $('#total').val()
    totalW = parseInt(totalW)
    barW = $('#bar').val()
    barW = parseInt(barW)
    side = (totalW - barW) / 2
    console.log 'value: ' + side
    $('#sides').text(side)

    if side >= 45
        num45 = side / 45 #if side >= 45
        num45 = Math.floor(num45) #if num45
        $('#45').text(num45) #if num45
        #curWeight = totalW - (num45 * 45)
        side = side - (num45 * 45) #if num45
    
    if side >= 35
        num35 = side / 35 #if curSide >= 35
        num35 = Math.floor(num35) #if num35
        $('#35').text(num35) #if num35
        #curWeight = curWeight - (num35 * 35)
        side = side - (num35 * 35) #if num35 #curWeight / 2
    
    if side >= 25
        num25 = side / 25 #if curSide >= 25
        num25 = Math.floor(num25) #if num25
        $('#25').text(num25) #if num25
        #curWeight = curWeight - (num25 * 25)
        side = side - (num25 * 25) #if num25 #curWeight / 2
    
    if side >= 10
        num10 = side / 10 #if curSide >= 10
        num10 = Math.floor(num10) #if num10
        $('#10').text(num10) #if num10
        #curWeight = curWeight - (num10 * 10)
        side = side - (num10 * 10) #if num10 #curWeight / 2
    
    if side >= 5
        num5 = side / 5 #if curSide >= 5
        num5 = Math.floor(num5) #if num5
        $('#5').text(num5) #if num5
        #curWeight = curWeight - (num5 * 5)
        side = side - (num5 * 5) #if num5 #curWeight / 2
        
    if side >= 2.5
        num2 = side / 2.5 #if curSide >= 2.5
        num2 = Math.floor(num2) #if num2
        $('#2').text(num2) #if num2

$ ->
    $(".slider").on("slidestop", (event, ui) ->
        calculate($(this).siblings('input'))
    )