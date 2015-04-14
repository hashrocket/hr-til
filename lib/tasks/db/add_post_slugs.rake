namespace :db do
  task :add_post_slugs => [:environment] do
    @posts = Post.all
    @posts.each do |post|
      unless post.slug
        puts "Generating slug for post ##{post.id}"
        post.slug = SecureRandom.hex(5)
        post.save!
      end
    end
  end
end
