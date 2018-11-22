require "administrate/base_dashboard"

class MemberDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    follow_ups: Field::HasMany,
    attendances: Field::HasMany,
    subscriptions: Field::HasMany,
    concerts: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    email: Field::String,
    phone_no: Field::String,
    address: Field::Text,
    city: Field::String,
    state: Field::String,
    dob: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    status: Field::String.with_options(searchable: false),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :follow_ups,
    :attendances,
    :subscriptions,
    :concerts,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :follow_ups,
    :attendances,
    :subscriptions,
    :concerts,
    :id,
    :name,
    :email,
    :phone_no,
    :address,
    :city,
    :state,
    :dob,
    :created_at,
    :updated_at,
    :status,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
#    :follow_ups,
#    :attendances,
#    :subscriptions,
#    :concerts,
    :name,
    :email,
    :phone_no,
    :address,
    :city,
    :state,
    :dob,
    :status,
  ].freeze

  # Overwrite this method to customize how members are displayed
  # across all pages of the admin dashboard.
  #
   def display_resource(member)
     member.name
   end
end
