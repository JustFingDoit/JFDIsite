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

  tween = new Sequence()
  menu = document.getElementById("navbar")
  tween.addChild new Tween(menu.style, "width", Tween.regularEaseOut, 0, 100, 1, "%")
  $(menu).width "0px"
  i = 1

  while i < 5
    elem = document.getElementById("menu" + i)
    console.log elem.text
    tween.addChild new Tween(elem.style, "width", Tween.bounceEaseOut, 25, 85, 0.3, "px")
    i++
  tween.start()

  bgtween = new Sequence()
  bg = document.getElementById("header_background")
  bgtween.addChild new OpacityTween(bg, Tween.bounceEaseIn, 20, 100, 4)
  bgtween.start()

jQuery.fn.center = ->
  @css "margin-top", ((($(this).parent().outerHeight() - @outerHeight()) - 75) / 2) + "px"
  this

dumpThis = (a) ->
  z = ""
  for i of a
    z += i + " : " + a[i] + "\n"
  alert z