json.extract! pet_photo, :id, :adoption_pet_id, :created_at, :updated_at
json.url pet_photo_url(pet_photo, format: :json)
