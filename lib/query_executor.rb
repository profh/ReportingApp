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
  
  def method_missing(meth, *args, &block)
    if meth.to_s =~ /^(.+)_using_(.+)$/
      # Wrap in begin..rescue to raise exception if not handled properly
      begin
        # Regex above split the method name into original method ($1) and db name ($2)
        run_method_with_new_db($1, $2, *args, &block)
      rescue Exception => e
        # If error occurs, be safe and go back to the system's database
        connect_to_db
        # Raise an exception that AppController is ready to handle
        raise Exceptions::QueryNotExecuted
      end
    else
      # You *must* call super if you don't handle the method,
      # otherwise you'll mess up Ruby's method lookup.
      super 
    end
  end

  def run_method_with_new_db(meth, new_db, *args, &block)
    # Since you are using sqlite3 for now, append the extension
    new_db = new_db + ".sqlite3"
    # Connect to the database you want to use
    connect_to_db(new_db)
    # Run the original method but now on the new db we are connected to
    results = run_original_method(meth, *args, &block)
    # Switch back to the system's database
    connect_to_db
    # (Explicitly) return the results
    return results
  end

  def run_original_method(meth, *args, &block)
    self.send(meth, *args, &block)
  end

end