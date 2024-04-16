class FrotaController < ApplicationController
  before_action :set_frotum, only: %i[ show edit update destroy ]

  # GET /frota or /frota.json
  def index
    @frota = Frotum.all
  end

  # GET /frota/1 or /frota/1.json
  def show
  end

  # GET /frota/new
  def new
    @frotum = Frotum.new
  end

  # GET /frota/1/edit
  def edit
  end

  # POST /frota or /frota.json
  def create
    @frotum = Frotum.new(frotum_params)

    respond_to do |format|
      if @frotum.save
        format.html { redirect_to frotum_url(@frotum), notice: "Registro Criado com Sucesso" }
        format.json { render :show, status: :created, location: @frotum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frota/1 or /frota/1.json (Update)
  def update
    respond_to do |format|
      if @frotum.update(frotum_params)
        format.html { redirect_to frotum_url(@frotum), notice: "Registro Atualizado com Sucesso" }
        format.json { render :show, status: :ok, location: @frotum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frota/1 or /frota/1.json
  def destroy
    @frotum.destroy!

    respond_to do |format|
      format.html { redirect_to frota_url, notice: "Registro apagado com Sucesso" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frotum
      @frotum = Frotum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frotum_params
      params.require(:frotum).permit(:veiculo, :placa, :km_inicial, :hora_saida, :km_final, :hora_entrada, :condutor, :data)
    end
end
