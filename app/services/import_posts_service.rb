# frozen_string_literal: true

# Imports posts from a CSV file.
#
#   result = ImportPostsService.call(params[:file])
#   result = ImportPostsService.call("tmp/posts.csv", atomic: true)
#
# Accepts an uploaded file (ActionDispatch::Http::UploadedFile), a File/Tempfile
# or a path. Extra options go straight to the importer (atomic:, bulk:, batch_size:).
# Returns a CsvImporter::Result (created, updated, errors, success?, rolled_back?).
class ImportPostsService
  def self.call(...)
    new(...).call
  end

  def initialize(file, **options)
    @file = file
    @options = options
  end

  def call
    raise ArgumentError, "A CSV file is required" if @file.nil? || @file.to_s.empty?

    PostImporter.new(path, **@options).call
  end

  private

  def path
    @file.respond_to?(:path) ? @file.path : @file.to_s
  end
end
