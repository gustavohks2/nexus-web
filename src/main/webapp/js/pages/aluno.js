
$(document).ready(function() {

    $("#input-data-nascimento").mask('00/00/0000');
    $('#input-celular').mask('(00) 0 0000-0000');
    $('#input-telefone-fixo').mask('(00) 0000-0000');
    $('#input-peso').mask('00,00 Kg');
    $('#input-altura').mask('0,00');

    $('#form-cadastrar-aluno').submit(function(event) {
        $('#input-celular').unmask();
        $('#input-telefone-fixo').unmask();
        $('#input-peso').val($('#input-peso').val().replace(',', '.').replace(' Kg', '').trim());
        $('#input-altura').val($('#input-altura').val().replace(',', '.').trim());
    });

});