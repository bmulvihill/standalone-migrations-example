namespace :db do
  desc 'Reload views from db/views/*.sql'
  task recompile_views: :environment do
    STDOUT.puts 'Recompiling views...'

    Dir.glob(Rails.root.join('db/views/**/*.sql')).sort.each do |filename|
      sql = File.read(filename)
      ActiveRecord::Base.connection.execute(sql)
    end

    STDOUT.puts 'Views recompiled.'
  end
end
