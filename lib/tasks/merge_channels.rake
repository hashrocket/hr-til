namespace :db do
  task merge_channels: :environment do
    {
      'javascript'  => %w(reactjs emberjs coffeescript),
      'mobile'      => %w(android ios),
      'development' => %w(assembly algorithms),
      'sql'         => %w(postgres),
      'html-css'    => %w(html css)
    }.map do |new_channel_name, old_channel_names|
      [Channel.find_or_create_by(name: new_channel_name), old_channel_names.map { |name| Channel.find_or_create_by(name: name) }]
    end.each do |new_channel, old_channels|
      old_channels.each do |old_channel|
        puts "Merging #{old_channel.posts.map(&:id).to_sentence} into #{new_channel.name}"
        old_channel.posts.update_all channel_id: new_channel.id
      end
    end.each do |_, old_channels|
      puts "Destroying #{old_channels.map(&:name).to_sentence} channels!"
      old_channels.each(&:destroy)
    end
  end
end
