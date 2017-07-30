const sortedContainers = sortable(".js-sortable-items", {
  forcePlaceholderSize: true,
  connectWith: '.js-sortable-items'
});

const sortedListContainers = sortable(".js-sortable-lists", {
  forcePlaceholderSize: true
});

$('.toogle-btn').click(function(e){
  e.preventDefault();
  $button = $(e.target)
  $form = $button.parents("form.update-all");
  data = $form.serializeArray();
  data.push({name: 'toggle', value: e.target.value});
  
  $.ajax({
    method: $form.attr('method'),
    url: $form.attr('action'),
    data: data
  });

  if ($button.hasClass("done")) {
    $button.addClass("undone").removeClass("done");
    $button.parent().addClass("undone").removeClass("done");
    $button.prev().val("undone");
    $button.html("Done");
  } else {
    $button.addClass("done").removeClass("undone");
    $button.parent().addClass("done").removeClass("undone");
    $button.prev().val("done");
    $button.html("Undo");
  }
})

sortedContainers.forEach(function(element) {
  element.addEventListener("sortupdate", function(e) {
    console.log("We will learn how to save this dynamically");
    $form = $(e.target.parentElement);
    $form.submit();
    /*
    
    This event is triggered when the user stopped sorting and the DOM position has changed.

    e.detail.item contains the current dragged element.
    e.detail.index contains the new index of the dragged element (considering only list items)
    e.detail.oldindex contains the old index of the dragged element (considering only list items)
    e.detail.elementIndex contains the new index of the dragged element (considering all items within sortable)
    e.detail.oldElementIndex contains the old index of the dragged element (considering all items within sortable)
    e.detail.startparent contains the element that the dragged item comes from
    e.detail.endparent contains the element that the dragged item was added to (new parent)
    e.detail.newEndList contains all elements in the list the dragged item was dragged to
    e.detail.newStartList contains all elements in the list the dragged item was dragged from
    e.detail.oldStartList contains all elements in the list the dragged item was dragged from BEFORE it was dragged from it
    */
  });
});

$('form.update-all').on('submit', function(e){
  e.preventDefault();
  $form = $(e.target);
  $.ajax({
    method: $form.attr('method'),
    url: $form.attr('action'),
    data: $form.serializeArray()  
  });
});

$('.js-add-list').click(function(){
  $('.list-form').toggleClass("is-idle");
});

$('.cancel-form.js-cancel-form').click(function(){
  $('.list-form').toggleClass("is-idle");
})

$('div.list-name').on("click", function(e) {
  $(e.target).toggleClass("hidden");
  $(e.target).siblings('.edit-name').toggleClass("hidden");
});

$('button.primary-btn, .cancel-btn').on("click", function(e) {
  $(e.target).parent('.edit-name').siblings().toggleClass("hidden");
  $(e.target).parents('.edit-name').toggleClass("hidden");
  if ($(e.target).hasClass('primary-btn'))
    $(e.target).parents('.edit-name').siblings().html(($(e.target).siblings('.edit-list-name').val()));
});

$('.delete-item-btn').on('click', function(e) {
  $form = $(e.target).parents('form.update-all');
  $(e.target).parents('li').remove();
  $form.submit();
})

$('.delete-list-btn').on('click', function(e){
  $btn = $(e.target).parent();
  console.log($btn.data('list-id'));  
  data = {
    name: 'list_id',
    value: $btn.data('list-id')
  }
  if (confirm('Are you sure you want to delete this?')) {
    $.post({
    url: '/delete_list',
    data: [data],
    success: function() {
      $btn.parents('.list').remove();
    }
  })
  }  
});