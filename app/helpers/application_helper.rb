module ApplicationHelper
  def get_service_list
		service = {
			'Medical'=>'Medical',
			'Other Health Practitioners'=>'Other Health Practitioners'
		}
  end
  
  def get_service_type_list
		service_type = {
			'Expenditures'=>'Expenditures',
      'Patient Count'=>'Patient Count',
      'Services'=>'Services'
		}
	end
end
