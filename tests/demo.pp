# populate global variables with our structured facts
decode_structured_facts()

notify { 'structured facts demo':
  message => template('structured_facts/demo.erb'),
}
