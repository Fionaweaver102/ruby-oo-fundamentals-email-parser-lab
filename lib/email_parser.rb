class EmailAddressParser
    attr_accessor :cvs_emails

    def initialize(cvs_emails)
        @cvs_emails = cvs_emails
    end 

    def parse 
        cvs_emails.split.map do |addresses|
            addresses.split(",")
        end 
        .flatten.uniq 
    end
end
# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
