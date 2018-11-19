require "administrate/base_dashboard"

class RemunerationDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    concert: Field::BelongsTo,
    artist: Field::BelongsTo,
    id: Field::Number,
    amount: Field::Number,
    mode_of_payment: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :concert,
    :artist,
    :id,
    :amount,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :concert,
    :artist,
    :id,
    :amount,
    :mode_of_payment,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :concert,
    :artist,
    :amount,
    :mode_of_payment,
  ].freeze

  # Overwrite this method to customize how remunerations are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(remuneration)
  #   "Remuneration ##{remuneration.id}"
  # end
end
