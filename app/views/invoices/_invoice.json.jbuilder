json.extract! invoice, :id, :company_id, :title, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
