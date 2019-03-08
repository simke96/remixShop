
$(document).ready ->
  $('.my-activity').click (event) ->
    total = undefined
    total = 0
    $('.my-activity:checked').each ->
      total += parseInt($(this).val())
      return
    if total == 0
      $('#amount').val ''
    else
      $('#amount').val total
    return


  $('.tab li').click ->
    tab_id = undefined
    tab_id = $(this).attr('data-tab')
    $('.tab li').removeClass 'current'
    $('.tabcontent').removeClass 'current'
    $(this).addClass 'current'
    $('#' + tab_id).addClass 'current'

  $('.vidiJos').click ->
    $('.more_articles').slideDown 'slow'
    $(this).hide()
    return


  $('.articles').on 'click', ->
    $('.bigImage').attr 'src', $(this).find('img').attr('src')
    return
  if $('#back-to-top').length
    scrollTrigger = 500

    backToTop = ->
      scrollTop = $(window).scrollTop()
      if scrollTop > scrollTrigger
        $('#back-to-top').addClass 'show'
      else
        $('#back-to-top').removeClass 'show'
      return

    backToTop()
    $(window).on 'scroll', ->
      backToTop()
      return
    $('#back-to-top').on 'click', (e) ->
      e.preventDefault()
      $('html,body').animate { scrollTop: 0 }, 700
      return
  return

# ---