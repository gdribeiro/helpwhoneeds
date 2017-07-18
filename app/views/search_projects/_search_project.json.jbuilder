json.extract! search_project, :id, :keywords, :type, :urgent, :min_amout_asked, :max_amount_asked, :new, :show, :created_at, :updated_at
json.url search_project_url(search_project, format: :json)
