require 'rails_helper'

describe 'gold master spec' do

  specify 'the homepage does not change' do

    ActiveRecord::Base.connection.execute <<-SQL
      truncate schema_migrations;
      #{Rails.root.join('spec/fixtures/gold_master.sql').read}
    SQL

    visit root_path

    page_html = page.html
    gold_master_file = Rails.root.join('spec/fixtures/gold_master.txt')

    if !gold_master_file.exist?
      gold_master_file.write(page_html)
    else
      gold_master = gold_master_file.read

      if gold_master != page_html
        gold_master_file.write(page_html)
      end

      expect(page_html).to eq(gold_master)
    end
  end

  specify 'the homepage does not change at all', :js do

    # TODO: Replace with Gold Master data, once I figure out how to do that
    FactoryGirl.create_list(:post, 55)

    visit root_path

    gold_master_image = Rails.root.join('spec/fixtures/gold_master.png')
    if !gold_master_image.exist?
      print "Writing Gold Master image... "
      save_screenshot(gold_master_image)
      puts "done"
    else
      actual_image = Rails.root.join('spec/fixtures/actual_image.png')
      save_screenshot(actual_image)

      gold_master_image_read = gold_master_image.read
      actual_image_read = actual_image.read

      match = gold_master_image_read == actual_image_read
      if !match
        diff_image = 'spec/fixtures/diff_image.png'
        exec "compare #{gold_master_image} #{actual_image} -highlight-color seagreen #{diff_image}"
        exec "open #{diff_image}"

        gold_master_image.write(tmp_image_data)
      end

      expect(match).to eq true
    end
  end
end
