require 'test_helper'

class DatGretelTest < ActiveSupport::TestCase
  setup do
    DatGretel.reset!
  end

  test "defaults" do
    assert_equal [Rails.root.join("config", "breadcrumbs.rb"),
                  Rails.root.join("config", "breadcrumbs", "**", "*.rb"),
                  Rails.root.join("app", "views", "breadcrumbs", "**", "*.rb")],
                 DatGretel.breadcrumb_paths[-3..-1]
    assert_equal ["development"], DatGretel.reload_environments
    assert !DatGretel.suppress_deprecation_warnings?
  end

  test "configuration block" do
    DatGretel.configure do |config|
      config.reload_environments << "staging"
    end

    assert_equal ["development", "staging"], DatGretel.reload_environments
  end
end
