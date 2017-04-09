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
      save_screenshot(gold_master_image)
    else
      tmp_image = Rails.root.join('tmp/capybara/tmp_image.png')
      save_screenshot(tmp_image)

      gold_master_image_data = gold_master_image.read
      tmp_image_data = tmp_image.read

      unless match = gold_master_image_data == tmp_image_data

        require 'pry'; binding.pry;
        diff_image = 'tmp/capybara/gold_master_diff.png'
        exec "compare #{gold_master_image} #{tmp_image} -highlight-color seagreen #{diff_image}"

        # TODO: Open the file for inspection
        gold_master_image.write(tmp_image_data)
        # TODO: Clean up artifacts
      end

      expect(match).to eq true
    end
  end
end
