require "application_system_test_case"

class FrotaTest < ApplicationSystemTestCase
  setup do
    @frotum = frota(:one)
  end

  test "visiting the index" do
    visit frota_url
    assert_selector "h1", text: "Frota"
  end

  test "Criar Registro" do
    visit frota_url
    click_on "New frotum"

    fill_in "Condutor", with: @frotum.condutor
    fill_in "Data", with: @frotum.data
    fill_in "Hora entrada", with: @frotum.hora_entrada
    fill_in "Hora saida", with: @frotum.hora_saida
    fill_in "Km final", with: @frotum.km_final
    fill_in "Km inicial", with: @frotum.km_inicial
    fill_in "Placa", with: @frotum.placa
    fill_in "Veiculo", with: @frotum.veiculo
    click_on "Criar Registro"

    assert_text "Registro Criado com Sucesso!"
    click_on "Back"
  end

  test "should update Frotum" do
    visit frotum_url(@frotum)
    click_on "Edit this frotum", match: :first

    fill_in "Condutor", with: @frotum.condutor
    fill_in "Data", with: @frotum.data
    fill_in "Hora entrada", with: @frotum.hora_entrada
    fill_in "Hora saida", with: @frotum.hora_saida
    fill_in "Km final", with: @frotum.km_final
    fill_in "Km inicial", with: @frotum.km_inicial
    fill_in "Placa", with: @frotum.placa
    fill_in "Veiculo", with: @frotum.veiculo
    click_on "Update Frotum"

    assert_text "Frotum was successfully updated"
    click_on "Back"
  end

  test "should destroy Frotum" do
    visit frotum_url(@frotum)
    click_on "Destroy this frotum", match: :first

    assert_text "Frotum was successfully destroyed"
  end
end
