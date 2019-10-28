json.extract! badge, :id, :badge_id, :badge_template_id, :issued_to, :recipient_email, :created_at, :updated_at
json.url badge_url(badge, format: :json)
