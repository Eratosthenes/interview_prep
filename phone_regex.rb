# a regex for matching phone numbers (my creation)
"(216)-308-0725 or 123-234-3456 or 123 234-3456 or 1232343454 or 1234 234 2345".scan /1?[^a-zA-Z ]{0,2}\d{3}.{0,2}\d{3}.{0,2}\d{4}/
# another one
"(216)-308-0725 or 123-234-3456 or 123 234-3456 or 1232343454 or 1234 234 2345 or 1 123 234 3456".scan /1?[ -]?\(?\d{3}\)?[ -]?\d{3}[ -]?\d{4}/
