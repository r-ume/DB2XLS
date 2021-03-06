require 'rubygems'
require 'pry'
require 'test/unit'
require_relative '../../app/v2/schema_investigation_task'
require_relative '../../app/v2/my_local_db'
require_relative '../../app/v2/outs/console'
require_relative '../../app/v2/outs/xls/main'

module V2
  class TC_SchemaInvestigationTask < Test::Unit::TestCase
    def setup
      @file_name   = 'staging.xls'
      @my_local_db = App::V2::MyLocalDb.instance
      @console     = App::V2::Outs::Console.new(file_name: @file_name)
      @xls_main    = App::V2::Outs::Xls::Main.new(file_name: @file_name)
      @task        = App::V2::SchemaInvestigationTask.new(
        investigator: @my_local_db,
        formatters:   [@console, @xls_main]
      )
    end

    def test_run

    end
  end
end
