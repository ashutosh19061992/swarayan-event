require "administrate/base_dashboard"

class ConcertDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    location: Field::BelongsTo,
    follow_ups: Field::HasMany,
    members: Field::HasMany,
    subscriptions: Field::HasMany,
    id: Field::Number,
    concert_name: Field::String,
    concert_date: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    artist_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :location,
    :follow_ups,
    :members,
    :subscriptions,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :location,
    :follow_ups,
    :members,
    :subscriptions,
    :id,
    :concert_name,
    :concert_date,
    :created_at,
    :updated_at,
    :artist_id,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :location,
    :follow_ups,
    :members,
    :subscriptions,
    :concert_date,
    :artist_id,
  ].freeze

  # Overwrite this method to customize how concerts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(concert)
  #   "Concert ##{concert.id}"
  # end
end
