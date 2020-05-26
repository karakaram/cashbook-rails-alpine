ActiveAdmin.register MonthlyExpense do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :expense_type_id, :price, :paid_on
  #
  # or
  #
  # permit_params do
  #   permitted = [:expense_type_id, :price, :paid_on]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
