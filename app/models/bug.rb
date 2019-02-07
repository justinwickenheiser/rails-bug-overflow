class Bug < ApplicationRecord
	enum issue_type: [:Issue, :Enhancement, :Feature]
	enum priority: [:Low, :Medium, :High]
	enum status: [:Open, :Closed, :Monitor]
end
