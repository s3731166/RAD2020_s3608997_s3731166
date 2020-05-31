getParams = ->
    params = ""
    topics = []
    $(".topic-select:checked").each ->
    topics.push($(this).attr('id'))    
    params += "&#{$.param({topics: topics})}";
    return params

$('.topic-select').on 'change', (event) =>    
  $.ajax "/posts.js?"+getParams(),
    type: 'GET'
    dataType: 'script'