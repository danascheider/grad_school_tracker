json.extract! faculty, :id, :university_id, :first_name, :last_name, :email, :created_at, :updated_at
json.url faculty_url(faculty, format: :json)
