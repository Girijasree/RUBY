def get_command_line_argument
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

dns_raw = File.readlines("zone.txt")

def parse_dns(dns_raw)
  dns_records = { :A => {}, :CNAME => {} }
  dns_raw.each do |value|
    record_set = value.split(",")
    if (record_set[0] == "A")
      dns_records[:A][record_set[1]] = record_set[2].strip
    else
      dns_records[:CNAME][record_set[1]] = record_set[2].strip
    end
  end
  dns_records
end

def resolve(dns_records, lookup_chain, domain)
  records_Set1 = dns_records[:A]
  records_Set2 = dns_records[:CNAME]
if records_Set1.has_key?(domain)
    lookup_chain.push(records_Set1[domain])
    lookup_chain
elsif records_Set2.has_key?(domain)

  lookup_chain.push(records_Set2[domain])
  lookup_chain = resolve(dns_records, lookup_chain, records_Set2[domain])
else
    puts "Error: record not found for #{domain}"
    lookup_chain
  end
end

dns_records = parse_dns(dns_raw)

lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
puts lookup_chain.join(" => ")
