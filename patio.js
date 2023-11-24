function exibirArea(id){

  console.log(id);
  $.ajax({
      type: 'POST',
      url: '../php/verificarArea.php',
      data: {id : id},
      success: function(quantidade){
          if(quantidade > 0){
              window.location.href= '../php/exibirCarros.php?id='+id;
          }
          else{
              alert("Essa area não possui carros!");
          }
      }
  });
}