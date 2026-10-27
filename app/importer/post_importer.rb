# frozen_string_literal: true

# Declares how a CSV file maps to the Post model.
# Expected CSV headers: title, sub_title, author, likes, comments, content
class PostImporter < CsvImporter::Base
  model Post

  column :title, required: true
  column :sub_title
  column :author
  column :likes, type: :integer
  column :comments
  column :content
end
