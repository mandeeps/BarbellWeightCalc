calculate = ->
    totalW = parseInt($('#total').val())
    barW = parseInt($('#bar').val())

    side = (totalW - barW) / 2
    $('#sides').html(side)
    $('.weights').html("0")

    if side >= 45
        num45 = side / 45
        num45 = Math.floor(num45)
        $('#45').html(num45)
        side = side - (num45 * 45)
    
    if side >= 35
        num35 = side / 35
        num35 = Math.floor(num35)
        $('#35').html(num35)
        side = side - (num35 * 35)
    
    if side >= 25
        num25 = side / 25
        num25 = Math.floor(num25)
        $('#25').html(num25)
        side = side - (num25 * 25)
    
    if side >= 10
        num10 = side / 10
        num10 = Math.floor(num10)
        $('#10').html(num10)
        side = side - (num10 * 10)
    
    if side >= 5
        num5 = side / 5
        num5 = Math.floor(num5)
        $('#5').html(num5)
        side = side - (num5 * 5)
        
    if side >= 2.5
        num2 = side / 2.5
        num2 = Math.floor(num2)
        $('#2').html(num2)

$ ->
    $('#total').on('input', ->
      $('#tVal').html($(this).val())
      calculate()
    )
    $('#bar').on('input', ->
      $('#bVal').html($(this).val())
      calculate()
    )

    FastClick.attach document.body