rails_3 = Rails::VERSION::MAJOR == 3
mysql = ActiveRecord::Base.connection.adapter_name =~ /mysql/i

if rails_3 && mysql
  class ActiveRecord::ConnectionAdapters::ColumnDefinition
    def sql_type
      type.to_sym == :primary_key ? 'int(11) auto_increment PRIMARY KEY' :  base.type_to_sql(type.to_sym, limit, precision, scale) rescue type
    end
  end
end
