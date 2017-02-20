ActiveAdmin.register SafetyReport do
  permit_params :report_title, :report_description, :report_date, :incident_location, :hazard_category, :damage_category, :third_party_type, :third_party_name, :risk_probability, :risk_consequense, :risk_level, :reported_by, :download_report, :attachment

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
