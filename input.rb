require './lib/check_account.rb'

File.foreach("input.txt").with_index do |line, line_num|
    puts "#{line_num}: #{line}"
end

def get_string_from_file(string, file_path)
    File.open(file_path) do |f|
        f.readlines.each { |line| return line if line.include?(string) }
    end
    nil
end



file_path = 'input.txt'
check_account_name = get_string_from_file('add check account ', file_path)
expense_account_name_1 = get_string_from_file('add expense account ', file_path)
expense_account_name_2 = get_string_from_file('add expense account ', file_path)
income_account_name = get_string_from_file('add income account ', file_path)

def get_int_from_file (int, file_path)
    File.open(file_path) do |f|
        f.readlines.each { |line| return line if line.include?(int)}
    end
    nil
end

file_path = 'input.txt'
income_account_saldo = get_int_from_file('transaction', file_path).split[3].to_i
check_account_saldo = get_int_from_file('transaction', file_path).split[3]
expense_account_saldo_1 = (File.open("input.txt").readlines[5].split[3]).to_i
expense_account_saldo_2 = (File.open("input.txt").readlines[6].split[3]).to_i + (File.open("input.txt").readlines[8].split[3]).to_i


output = File.open("output.txt", "w")

output.puts "#{check_account_name.split[3]}:#{check_account_saldo.split[3]}"
output.puts "#{expense_account_name_1.split[3]}:-#{expense_account_saldo_1}"
output.puts "#{expense_account_name_2.split[3]}:-#{expense_account_saldo_2}"
output.puts "#{income_account_name.split[3]}:#{income_account_saldo}"

output.close


