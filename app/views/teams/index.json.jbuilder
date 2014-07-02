json.array!(@teams) do |team|
  json.extract! team, :id, :image, :nombre, :funcion, :resumen, :facebook, :linkening, :twitter, :googlemas
  json.url team_url(team, format: :json)
end
