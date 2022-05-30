# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(input)
        @input = input
    end

    # parse the input string and return an array of emails
    # string may be delimited by spaces or commas
    # should also remove duplicates
    def parse
        # spent a lot of time reading https://www.geeksforgeeks.org/ruby-regular-expressions/
        # to try to figure out how to use regex for this
        # in the end it was this combo /,* / because there were 0 or 1
        # commas, and at least one space, separating each email
        input_array = @input.split(/,* /)
        input_array.uniq
    end
end