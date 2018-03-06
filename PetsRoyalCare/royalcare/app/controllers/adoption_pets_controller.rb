class AdoptionPetsController < ApplicationController
  before_action :set_adoption_pet, only: [:show, :edit, :update, :destroy]

  # GET /adoption_pets
  # GET /adoption_pets.json
  def index
    @adoption_pets = AdoptionPet.where(adopted: 'false')
    @breeds = Breed.all()
    if params[:weights]
      @choose = params[:weights]
      query_string= ""
      @choose.each {|a| query_string << (@choose.last == a ? "weight between #{a.split(',').first} and #{a.split(',').last}" : "weight between #{a.split(',').first} and #{a.split(',').last} or ")}
      @adoption_pets = @adoption_pets.where(query_string)
    end

    if params[:breeds]
      @breeds1 = params[:breeds]
      @razas = Breed.where(:name => params[:breeds])
      @adoption_pets= @adoption_pets.where( "breed_id  IN (?)", @razas.ids)


    end

    @antiguos = @adoption_pets.order(created_at: :asc).limit(5)
    @jovenes =  @adoption_pets.where( "adoption_pets.id NOT IN (?)", @antiguos.ids).reorder(birthday: :desc).limit(5)
    @todos = @adoption_pets.where( "adoption_pets.id NOT IN (?)", @antiguos.ids).where( "adoption_pets.id NOT IN (?)", @jovenes.ids).order("RANDOM()")

  end

  # GET /adoption_pets/1
  # GET /adoption_pets/1.json
  def show

  end

  # GET /adoption_pets/new
  def new
    @adoption_pet = AdoptionPet.new
    @breeds = Breed.all()
  end

  # GET /adoption_pets/1/edit
  def edit
    @breeds = Breed.all()
  end

  # POST /adoption_pets
  # POST /adoption_pets.json
  def create
    @adoption_pet = AdoptionPet.new(adoption_pet_params)
    @breeds = Breed.all()


    respond_to do |format|
      if @adoption_pet.save

        if params[:photos]
          # The magic is here ;)
          params[:photos].each { |image|
            @adoption_pet.pet_photos.create(photo: image)
          }
        end


        format.html { redirect_to @adoption_pet, notice: 'Adoption pet was successfully created.' }
        format.json { render :show, status: :created, location: @adoption_pet }
      else
        format.html { render :new }
        format.json { render json: @adoption_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adoption_pets/1
  # PATCH/PUT /adoption_pets/1.json
  def update
    respond_to do |format|
      if @adoption_pet.update(adoption_pet_params)
        if params[:photos]
          # The magic is here ;)
          params[:photos].each { |image|
            @adoption_pet.pet_photos.create(photo: image)
          }
        end
        format.html { redirect_to @adoption_pet, notice: 'Adoption pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @adoption_pet }
      else
        format.html { render :edit }
        format.json { render json: @adoption_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adoption_pets/1
  # DELETE /adoption_pets/1.json
  def destroy
    @adoption_pet.destroy
    respond_to do |format|
      format.html { redirect_to adoption_pets_url, notice: 'Adoption pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoption_pet
      @adoption_pet = AdoptionPet.find(params[:id])
      @size = Breed.find(@adoption_pet.breed_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adoption_pet_params
      params.require(:adoption_pet).permit(:name, :description, :birthday, :adopted, :image, :weight, :sterilized, :vaccinated, :depto, :house, :other_dog, :breed_id)
    end
end
