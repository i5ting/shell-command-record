# CmdParse usage
 

	# # ipaddr
	# ipaddr = CmdParse::Command.new( 'ipaddr', true, true )
	# ipaddr.short_desc = "Manage IP addresses"
	# cmd.add_command( ipaddr )
	# 
	# 
	# 
	# 
	# # ipaddr add
	# add = CmdParse::Command.new( 'add', false )
	# add.short_desc = "Add an IP address"
	# add.set_execution_block do |args|
	#   puts "Adding ip addresses: #{args.join(', ')}" if $verbose
	#   $ipaddrs += args
	# end
	# ipaddr.add_command( add )
	# 
	# # ipaddr del
	# del = CmdParse::Command.new( 'del', false )
	# del.short_desc = "Delete an IP address"
	# del.options = CmdParse::OptionParserWrapper.new do |opt|
	#   opt.on( '-a', '--all', 'Delete all IP addresses' ) { $deleteAll = true }
	# end
	# del.set_execution_block do |args|
	#   if $deleteAll
	#     $ipaddrs = []
	#   else
	#     puts "Deleting ip addresses: #{args.join(', ')}" if $verbose
	#     args.each {|ip| $ipaddrs.delete( ip ) }
	#   end
	# end
	# ipaddr.add_command( del )
	# 
	# # ipaddr list
	# list = CmdParse::Command.new( 'list', false )
	# list.short_desc = "Lists all IP addresses"
	# list.set_execution_block do |args|
	#   puts "Listing ip addresses:" if $verbose
	#   puts $ipaddrs.to_yaml
	# end
	# ipaddr.add_command( list, true )
	# cmd.add_command( NetStatCommand.new )