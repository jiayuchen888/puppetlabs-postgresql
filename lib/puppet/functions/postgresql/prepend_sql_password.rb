# frozen_string_literal: true

# @summary This function exists for usage of a role password that is a deferred function
Puppet::Functions.create_function(:'postgresql::prepend_sql_password') do
  # @param password
  # Accept both String and Sensitive[String]
  dispatch :default_impl do
    required_param 'Variant[String, Sensitive[String]]', :password
    return_type 'String'
  end
  def default_impl(password)
    "ENCRYPTED PASSWORD '#{password}'"
  end
end
