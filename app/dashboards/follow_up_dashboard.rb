require "administrate/base_dashboard"

class FollowUpDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    volunteer: Field::BelongsTo,
    member: Field::BelongsTo,
    concert: Field::BelongsTo,
    id: Field::Number,
    response: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :volunteer,
    :member,
    :concert,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :volunteer,
    :member,
    :concert,
    :id,
    :response,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :volunteer,
    :member,
    :concert,
    :response,
  ].freeze

  # Overwrite this method to customize how follow ups are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(follow_up)
  #   "FollowUp ##{follow_up.id}"
  # end
end
