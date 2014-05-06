json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :content
  json.url ticket_url(ticket, format: :json)
end
