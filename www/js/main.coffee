calculate = ->
    totalW = $('#total').slider('getValue') #val()
    totalW = parseInt(totalW)
    barW = $('#bar').slider('getValue') #val()
    barW = parseInt(barW)
    side = (totalW - barW) / 2
    console.log 'value: ' + side
    $('#sides').text(side)

    $('.weights').text(0)

    if side >= 45
        num45 = side / 45
        num45 = Math.floor(num45)
        $('#45').text(num45)
        side = side - (num45 * 45)
    
    if side >= 35
        num35 = side / 35
        num35 = Math.floor(num35)
        $('#35').text(num35)
        side = side - (num35 * 35)
    
    if side >= 25
        num25 = side / 25
        num25 = Math.floor(num25)
        $('#25').text(num25)
        side = side - (num25 * 25)
    
    if side >= 10
        num10 = side / 10
        num10 = Math.floor(num10)
        $('#10').text(num10)
        side = side - (num10 * 10)
    
    if side >= 5
        num5 = side / 5
        num5 = Math.floor(num5)
        $('#5').text(num5)
        side = side - (num5 * 5)
        
    if side >= 2.5
        num2 = side / 2.5
        num2 = Math.floor(num2)
        $('#2').text(num2)

$ ->
    # $(".slider").on("slidestop", (event, ui) ->
    #     calculate($(this).siblings('input'))
    # )
    $('.slider').slider().on('slide', ->
    )