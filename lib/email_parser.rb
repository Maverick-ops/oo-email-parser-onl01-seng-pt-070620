class EmailAddressParser
  attr_accessor :name, :csv_emails
  
  def initialize(csv_emails)
    @name = name 
    @csv_emails = csv_emails
  end
  
  def parse
    csv_emails.split.collect do |address|
      address.split (' , ')
    end 
    .flatten.uniq 
  end 



end 




# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
