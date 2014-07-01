module QueryExecutor
  # make a connection to a different database (given environment)
  def connect_to_db(db=nil)
    if db.nil?
      config = ActiveRecord::Base.configurations["#{Rails.env}"]
    else
      # Use the config line below for sqlite databases
      config = ActiveRecord::Base.configurations["#{Rails.env}"].merge("database" => "db/#{db}")
      # Use the config line below for MySQL or Postgres databases
      # config = ActiveRecord::Base.configurations["#{Rails.env}"].merge("database" => "#{db}")
    end
    ActiveRecord::Base.establish_connection(config)
  end
  
  # execute a standard SQL query on a specified database
  def execute_query_on_db(query, qry_db, original_db)
    begin
      connect_to_db(qry_db)
      ds = ActiveRecord::Base.connection.execute(query)
      connect_to_db(original_db)
      return ds
    rescue Exception => e
      connect_to_db(original_db)
      raise Exceptions::QueryNotExecuted
    end
  end  
end