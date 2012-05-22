jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()

$(document).ready ->
  $(window).scroll ->
    $("h1").css opacity: 1 - (($(window).scrollTop() * .002) * 2)

  $(".front-page h1").center()
  $("nav").append "<select class=\"page_switcher\" style=\"display:none;\">"
  $(".page_switcher").append "<option>Select Page</option>"
  $("nav ul li").each ->
    link = $(this).find("a")
    if link.hasClass("selected")
      $(".page_switcher").append "<option value='" + link.attr("href") + "' selecte='selected'>" + link.html() + "</option>"
    else
      $(".page_switcher").append "<option value='" + link.attr("href") + "'>" + link.html() + "</option>"

  $("nav").delegate ".page_switcher", "change", ->
    selected = $(this).find("option:selected")
    window.location = selected.attr("value")

jQuery.fn.center = ->
  @css "margin-top", ((($(this).parent().outerHeight() - @outerHeight()) - 75) / 2) + "px"
  this