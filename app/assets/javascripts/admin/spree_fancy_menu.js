//= require admin/spree_backend
$().ready(function() {
  $( "#sortable_menu" ).sortable({
    placeholder: "ui-state-highlight"
  });
  $( "#sortable_menu" ).disableSelection();
});