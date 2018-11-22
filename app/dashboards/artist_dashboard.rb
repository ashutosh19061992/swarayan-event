require "administrate/base_dashboard"

class ArtistDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    remunerations: Field::HasMany,
    concerts: Field::HasMany,
    specialities: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    city: Field::String,
    state: Field::String,
    phone_no: Field::String,
    linkedlin_url: Field::String,
    facebook_url: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    concert_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :remunerations,
    :concerts,
    :specialities,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :remunerations,
    :concerts,
    :specialities,
    :id,
    :name,
    :description,
    :city,
    :state,
    :phone_no,
    :linkedlin_url,
    :facebook_url,
    :created_at,
    :updated_at,
    :concert_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
#    :remunerations,
#    :concerts,
    :specialities,
    :name,
    :description,
    :city,
    :state,
    :phone_no,
    :linkedlin_url,
    :facebook_url,
#    :concert_id,
  ].freeze

  # Overwrite this method to customize how artists are displayed
  # across all pages of the admin dashboard.
  #
   def display_resource(artist)
     artist.name
   end
end
