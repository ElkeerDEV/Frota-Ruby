require "test_helper"

class FrotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frotum = frota(:one)
  end

  test "should get index" do
    get frota_url
    assert_response :success
  end

  test "should get new" do
    get new_frotum_url
    assert_response :success
  end

  test "Criar Registro" do
    assert_difference("Frotum.count") do
      post frota_url, params: { frotum: { condutor: @frotum.condutor, data: @frotum.data, hora_entrada: @frotum.hora_entrada, hora_saida: @frotum.hora_saida, km_final: @frotum.km_final, km_inicial: @frotum.km_inicial, placa: @frotum.placa, veiculo: @frotum.veiculo } }
    end

    assert_redirected_to frotum_url(Frotum.last)
  end

  test "Visualisar Registro" do
    get frotum_url(@frotum)
    assert_response :success
  end

  test "Editar Registro" do
    get edit_frotum_url(@frotum)
    assert_response :success
  end

  test "Atualizar Registro" do
    patch frotum_url(@frotum), params: { frotum: { condutor: @frotum.condutor, data: @frotum.data, hora_entrada: @frotum.hora_entrada, hora_saida: @frotum.hora_saida, km_final: @frotum.km_final, km_inicial: @frotum.km_inicial, placa: @frotum.placa, veiculo: @frotum.veiculo } }
    assert_redirected_to frotum_url(@frotum)
  end

  test "Deletar Registro" do
    assert_difference("Frotum.count", -1) do
      delete frotum_url(@frotum)
    end

    assert_redirected_to frota_url
  end
end
